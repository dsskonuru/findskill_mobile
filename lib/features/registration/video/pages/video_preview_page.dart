import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/progress_tracker/progress_tracker.dart';
import '../../../../../core/router/router.gr.dart';
import '../../../../../core/theme/app_bar.dart';
import '../../../../../core/theme/raised_gradient_button.dart';
import '../../../../../main.dart';
import '../provider/video_service_provider.dart';

class VideoPreviewPage extends StatefulWidget {
  const VideoPreviewPage({Key? key}) : super(key: key);

  @override
  _VideoPreviewPageState createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<VideoPreviewPage> {
  late VideoPlayerController _controller;
  static const ProgressKey pKey = ProgressKey.videoPreview;

  @override
  void initState() {
    saveProgress(pKey);
    if (container.read(videoServiceProvider).video != null) {
      _controller = VideoPlayerController.file(
          container.read(videoServiceProvider).video!)
        ..initialize().then(
          (_) {
            setState(() {});
            _controller.play();
          },
        );
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FindSkillAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 4.h,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.translate("Video Preview"),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 64.h,
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: VideoPlayer(_controller),
                            ),
                            Align(
                              child: InkWell(
                                onTap: () {
                                  setState(() => _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play());
                                },
                                child: Container(
                                  height: 18.w,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: _controller.value.isPlaying
                                      ? Icon(
                                          Icons.pause_rounded,
                                          color: Colors.white,
                                          size: 10.w,
                                        )
                                      : Icon(
                                          Icons.play_arrow_rounded,
                                          color: Colors.white,
                                          size: 10.w,
                                        ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      elevation:
                                          MaterialStateProperty.all<double>(
                                              7.0),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                    onPressed: () => context.router.push(
                                        const VideoTrimmerRoute()
                                        // FindSkillRouter(
                                        //     pageKey:
                                        //         ProgressKey.videoTrimmer.index),
                                        ),
                                    child: Text(
                                      AppLocalizations.of(context)!
                                          .translate("Trim"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      elevation:
                                          MaterialStateProperty.all<double>(
                                              7.0),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.redAccent),
                                    ),
                                    onPressed: () => context.router.push(
                                        const VideoCaptureRoute()
                                        // FindSkillRouter(
                                        //     pageKey:
                                        //         ProgressKey.videoCapture.index),
                                        ),
                                    child: Text(
                                      AppLocalizations.of(context)!
                                          .translate("Remake Video"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                        ),
                      ),
              ),
              SizedBox(
                height: 12.h,
                child: Center(
                  child: GradientButton(
                    width: 38.w,
                    onPressed: () async {
                      setState(() {});
                      await _controller.pause();
                      await context.router.push(const RegistrationRoute()
                          // FindSkillRouter(
                          //     pageKey: ProgressKey.registration.index),
                          );
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate("Publish Video"),
                      style: Theme.of(context).textTheme.button,
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
