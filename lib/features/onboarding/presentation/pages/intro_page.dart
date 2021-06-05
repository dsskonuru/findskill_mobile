import 'package:auto_route/auto_route.dart';
import 'package:find_skill/core/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/video/intro.mp4',
    )..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.toString());
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/png/FindSkill-Logo.png",
                height: 12.h,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 120.w,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.pause();
                    });
                    context.router.push(const SampleVideoRoute());
                  },
                  child: Text(
                    "Find Skills",
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.pause();
                    });
                    context.router.push(const SampleVideoRoute());
                  },
                  child: Text(
                    "List Your Skills",
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ],
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
