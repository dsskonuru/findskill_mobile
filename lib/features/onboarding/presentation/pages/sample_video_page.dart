import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/localization/localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../main.dart';
import '../provider/onboarding_provider.dart';
import '../widgets/app_bar.dart';

class SampleVideoPage extends StatefulWidget {
  @override
  _SampleVideoPageState createState() => _SampleVideoPageState();
}

class _SampleVideoPageState extends State<SampleVideoPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    debugPrint(container.read(languageProvider).getSampleVideoPath());

    _controller = VideoPlayerController.asset(
        'assets/video/${container.read(languageProvider).getSampleVideoPath()}')
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FindSkillAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  AppLocalizations.of(context)!.translate("sample video")
                      as String,
                  //"Sample Video",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.h),
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
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.pause();
                    });
                    context.router.navigate(
                      const JobSeekerRouter(children: [
                        VideoRouter(children: [VideoCaptureRoute()])
                      ]),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context)!.translate("create your video")
                        as String,
                    //"Create your video",
                    style: Theme.of(context).textTheme.button,
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
