import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_trimmer/video_trimmer.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/router/router.gr.dart';
import '../../../../../core/theme/raised_gradient_button.dart';
import '../../../../../main.dart';
import '../provider/video_service_provider.dart';

class VideoTrimmerPage extends StatefulWidget {
  const VideoTrimmerPage({Key? key}) : super(key: key);

  @override
  _VideoTrimmerPageState createState() => _VideoTrimmerPageState();
}

class _VideoTrimmerPageState extends State<VideoTrimmerPage> {
  final Trimmer _trimmer = Trimmer();

  double _startValue = 0.0;
  double _endValue = 0.0;

  // ignore: unused_field
  bool _isPlaying = false;
  // bool _progressVisibility = false;

  String getVideoLength() {
    return (((_endValue - _startValue) % 60000) / 1000).toStringAsFixed(2);
  }

  @override
  void initState() {
    if (container.read(videoServiceProvider).video != null) {
      _trimmer.loadVideo(
          videoFile: container.read(videoServiceProvider).video!);
    }
    super.initState();
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
              child: Stack(
                children: <Widget>[
                  // * Background
                  InkWell(
                    onTap: () async {
                      final bool playbackState =
                          await _trimmer.videPlaybackControl(
                        startValue: _startValue,
                        endValue: _endValue,
                      );
                      setState(() {
                        _isPlaying = playbackState;
                      });
                    },
                    child: Transform.scale(
                      scale:
                          (_trimmer.videoPlayerController!.value.aspectRatio) /
                              (100.w / 100.h),
                      child: VideoViewer(trimmer: _trimmer),
                    ),
                  ),
                  // * Top (Cancel and Settings)
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        // Visibility(
                        //   visible: _progressVisibility,
                        //   child: const LinearProgressIndicator(
                        //       backgroundColor: Colors.red),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                context.router.pop();
                              },
                              color: Colors.white,
                              icon: const Icon(Icons.cancel),
                            ),
                            IconButton(
                              // TODO: Implement Settings Icon
                              onPressed: () {},
                              color: Colors.white,
                              icon: const Icon(Icons.settings),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // * Bottom
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TrimEditor(
                          trimmer: _trimmer,
                          viewerWidth: 90.w,
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
                        SizedBox(height: 2.h),
                        Center(
                          child: Text(
                            "${getVideoLength()}s Selected",
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        RaisedGradientButton(
                          onPressed: () async {
                            Logger.root.fine("LOLOLOL");
                            // return _progressVisibility
                            //     ? null
                            //     : () async {
                            //         setState(() {
                            //           _progressVisibility = true;
                            //         });

                            final String trimmedOutputPath =
                                await _trimmer.saveTrimmedVideo(
                                    startValue: _startValue,
                                    endValue: _endValue);

                            File video = File(trimmedOutputPath);
                            final String dir = path.dirname(video.path);
                            final String newPath =
                                path.join(dir, 'video_test1.mp4');
                            video = await video.rename(newPath);

                            Logger.root.fine(video.path);
                            container.read(videoServiceProvider).video = video;

                            // setState(() {
                            //   _progressVisibility = false;
                            // });

                            await context.router
                                .navigate(const VideoPreviewRoute());
                            // };
                          },
                          child: Text(
                            AppLocalizations.of(context)!.translate("Done"),
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
