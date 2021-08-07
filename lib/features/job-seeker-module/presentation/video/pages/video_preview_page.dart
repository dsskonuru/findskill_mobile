import 'package:auto_route/auto_route.dart';
import 'package:findskill/core/localization/app_localization.dart';
import 'package:findskill/core/theme/raised_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/router/router.gr.dart';
import '../../../../../core/theme/app_bar.dart';
import '../../../../../main.dart';
import '../provider/video_service_provider.dart';

class VideoPreviewPage extends StatefulWidget {
  const VideoPreviewPage({Key? key}) : super(key: key);

  @override
  _VideoPreviewPageState createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<VideoPreviewPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 4.h,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.translate("Video Preview"),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
              SizedBox(
                height: 64.h,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: VideoPlayer(_controller),
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
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () => context.router
                                          .push(const VideoTrimmerRoute()),
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .translate("Trim"),
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline,
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                7.0),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.redAccent),
                                      ),
                                      onPressed: () => context.router
                                          .push(const VideoCaptureRoute()),
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .translate("Remake Video"),
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline,
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
                  // child: Container(),
                ),
              ),
              SizedBox(
                height: 12.h,
                child: Center(
                  child: RaisedGradientButton(
                    width: 38.w,
                    onPressed: () {
                      setState(() {
                        _controller.pause();
                      });
                      context.router.root.push(const RegistrationRoute());
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

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await container.read(videoServiceProvider).uploadVideoFile();
      //     await context.router.navigate(RegistrationRoute());
      //     return Future.value(null);
      //   },
      //   child: const Icon(Icons.cloud_upload_rounded),
      // ),
    );
  }
}
