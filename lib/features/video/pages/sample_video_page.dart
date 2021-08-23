import 'package:auto_route/auto_route.dart';
import 'package:findskill/core/progress_tracker/progress_tracker.dart';
import 'package:findskill/features/onboarding/presentation/provider/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/router/router.gr.dart';
import '../../../../../core/theme/app_bar.dart';
import '../../../../../core/theme/raised_gradient_button.dart';
import '../../../../../main.dart';

class SampleVideoPage extends StatefulWidget {
  @override
  _SampleVideoPageState createState() => _SampleVideoPageState();
}

class _SampleVideoPageState extends State<SampleVideoPage> {
  late VideoPlayerController _controller;
  static const ProgressKey pKey = ProgressKey.sampleVideo;

  @override
  void initState() {
    super.initState();
    saveProgress(pKey);
    debugPrint(container.read(languageProvider).getSampleVideoPath());

    _controller = VideoPlayerController.asset(
      'assets/video/${container.read(languageProvider).getSampleVideoPath()}',
    )..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
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
                    AppLocalizations.of(context)!.translate("Sample Video"),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 64.h,
                child: InkWell(
                  onTap: () {
                    setState(
                      () {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      },
                    );
                  },
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: VideoPlayer(_controller),
                          ),
                        )
                      : Container(),
                  // child: Container(),
                ),
              ),
              SizedBox(
                height: 12.h,
                child: Center(
                  child: GradientButton(
                    width: 160.0,
                    onPressed: () {
                      setState(() {
                        _controller.pause();
                      });
                      context.router.push(
                        const VideoCaptureRoute()
                        // FindSkillRouter(
                        //     pageKey: ProgressKey.videoCapture.index),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context)!
                          .translate("Create your video"),
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

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
