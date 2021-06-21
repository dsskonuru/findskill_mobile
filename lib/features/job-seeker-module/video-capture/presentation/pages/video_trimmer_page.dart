import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_trimmer/video_trimmer.dart';

import '../../../../../core/localization/localization.dart';
import '../../../../../core/router/router.gr.dart';


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
  bool _progressVisibility = false;
  
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
                  child: SizedBox(
                    height: 35.h,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Center(
                            child: TrimEditor(
                              trimmer: _trimmer,
                              //viewerWidth: MediaQuery.of(context).size.width,
                              maxVideoLength: const Duration(seconds: 30),
                              onChangeStart: (value) {
                                _startValue = value;
                              },
                              onChangeEnd: (value) {
                                _endValue = value;
                              },
                              onChangePlaybackState: (value) {
                                setState(() {
                                });
                              },
                            ),
                          ),
                        ),
                       
                       SizedBox(
                         height: 4.h,
                       ),
                                    Center(
                                      child: Text(
                                        "${(((_endValue - _startValue) % 60000) / 1000).toStringAsFixed(2)}s Selected",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16),
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
                                    SizedBox(
                         height: 9.h,
                       ),
                                    Align(
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
                                            onPressed: () async =>
                                                // context.router.navigate(RegistrationRoute()),
                                            _progressVisibility
                                                ? null
                                                : () async {
                                                    _saveVideo().then(
                                                      (outputPath) {
                                                        debugPrint('OUTPUT PATH: $outputPath');
                                                        context.router.navigate(VideoPreviewRoute(
                                                            outputVideoPath: outputPath));
                                                      },
                                                    );
                                                  },
                                            child: Text(
                                              AppLocalizations.of(context)!.translate("done")
                                                  as String,
                                              //"Done"
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
