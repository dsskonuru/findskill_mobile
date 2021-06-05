import 'package:auto_route/auto_route.dart';
import 'package:find_skill/core/router/router.gr.dart';
import 'package:find_skill/features/onboarding/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

class SampleVideoPage extends StatefulWidget {
  @override
  _SampleVideoPageState createState() => _SampleVideoPageState();
}

class _SampleVideoPageState extends State<SampleVideoPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/sample.mp4')
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
              child: const Text(
                "Sample Video",
                style: TextStyle(
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
                    context.router.push(const VideoCaptureRoute());
                  },
                  child: Text(
                    "Create your video",
                    style: Theme.of(context).textTheme.button,
                  )),
            )
          ],
        )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
