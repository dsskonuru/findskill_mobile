import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:find_skill/core/localization/localization.dart';
import 'package:find_skill/main.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_trimmer/video_trimmer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/router/router.gr.dart';

class VideoTrimmerPage extends StatefulWidget {
  final File file;
  const VideoTrimmerPage(this.file);
  @override
  _VideoTrimmerState createState() => _VideoTrimmerState();
}

class _VideoTrimmerState extends State<VideoTrimmerPage> {
  final Trimmer _trimmer = Trimmer();
  double _startValue = 0.0;
  double _endValue = 0.0;
  bool _isPlaying = false;
  bool _progressVisibility = false;
  late var controller;
  @override
  void initState() {
    super.initState();

    _loadVideo();
  }

  void _loadVideo() {
    _trimmer.loadVideo(videoFile: widget.file);
  }

  Future<String?> _saveVideo() async {
    setState(() {
      _progressVisibility = true;
    });
    String? _value;
    await _trimmer
        .saveTrimmedVideo(startValue: _startValue, endValue: _endValue)
        .then((value) {
      setState(() {
        _progressVisibility = false;
        _value = value;
      });
    });
    return _value;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.of(context).userGestureInProgress) {
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Transform.scale(
                scale: (_trimmer.videoPlayerController!.value.aspectRatio) /
                    (MediaQuery.of(context).size.width /
                        MediaQuery.of(context).size.height),
                child: VideoViewer(trimmer: _trimmer),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                      icon: const Icon(Icons.cancel),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: _progressVisibility,
                child: const LinearProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.42,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent)),

                         // width: 100.w,
                          child: TrimEditor(
                            trimmer: _trimmer,
                            viewerWidth: 95.w,
                            viewerHeight: 50,
                            borderPaintColor: Colors.blue,
                            circlePaintColor: Colors.blue,
                            scrubberPaintColor: Colors.blue,
                            maxVideoLength: const Duration(seconds: 30),
                            onChangeStart: (value) {
                              _startValue = value;
                            },
                            onChangeEnd: (value) {
                              _endValue = value;
                            },
                            onChangePlaybackState: (value) {
                              setState(() {
                                _isPlaying = value;
                              });
                            },
                          ),
                        ),

                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Text(
                              "${(((_endValue - _startValue) % 60000) / 1000).toStringAsFixed(2)}s Selected",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        // TextButton(
                        //   onPressed: () async {
                        //     final bool playbackState =
                        //         await _trimmer.videPlaybackControl(
                        //       startValue: _startValue,
                        //       endValue: _endValue,
                        //     );
                        //     setState(() {
                        //       _isPlaying = playbackState;
                        //     });
                        //   },
                        //   child: _isPlaying
                        //       ? const Icon(
                        //           Icons.pause,
                        //           size: 80.0,
                        //           color: Colors.white,
                        //         )
                        //       : const Icon(
                        //           Icons.play_arrow,
                        //           size: 80.0,
                        //           color: Colors.white,
                        //         ),
                        // ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Center(
                              child: ConstrainedBox(
                                constraints: const BoxConstraints.tightFor(
                                    width: 160, height: 50),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ))),
                                  onPressed: () async => context.router
                                      .navigate(RegistrationRoute()),
                                  // _progressVisibility
                                  //     ? null
                                  //     : () async {
                                  //         _saveVideo().then(
                                  //           (outputPath) {
                                  //             debugPrint('OUTPUT PATH: $outputPath');
                                  //             context.router.navigate(VideoPreviewRoute(
                                  //                 outputVideoPath: outputPath));
                                  //           },
                                  //         );
                                  //       },
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .translate("done") as String,
                                    //"Done"
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
