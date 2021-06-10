import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:video_trimmer/video_trimmer.dart';

import '../../../../core/localization/localization.dart';
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
        backgroundColor: Colors.black,
        body: Builder(
          builder: (context) => Center(
            child: Container(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Visibility(
                    visible: _progressVisibility,
                    child: const LinearProgressIndicator(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _progressVisibility
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
                    child:  Text(AppLocalizations.of(context)!.translate("save") as String,
                    //"SAVE"
                    ),
                  ),
                  Expanded(
                    child: VideoViewer(trimmer: _trimmer),
                  ),
                  Center(
                    child: TrimEditor(
                      trimmer: _trimmer,
                      viewerWidth: MediaQuery.of(context).size.width,
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
                  TextButton(
                    onPressed: () async {
                      final bool playbackState =
                          await _trimmer.videPlaybackControl(
                        startValue: _startValue,
                        endValue: _endValue,
                      );
                      setState(() {
                        _isPlaying = playbackState;
                      });
                    },
                    child: _isPlaying
                        ? const Icon(
                            Icons.pause,
                            size: 80.0,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.play_arrow,
                            size: 80.0,
                            color: Colors.white,
                          ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
