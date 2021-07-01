import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/router/router.gr.dart';

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
      'assets/video/Onboarding.mp4',
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
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(76, 95, 113, 1)),
                      ),
                      onPressed: () {
                        setState(() {
                          _controller.pause();
                        });
                        context.router.navigate(const SampleVideoRoute());
                      },
                      child: Text(
                        AppLocalizations.of(context)!.translate("find skills"),
                        //"Find Skills",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      AppLocalizations.of(context)!.translate("employer"),
                      //"Employer",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                SizedBox(
                  width: 9.w,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _controller.pause();
                        });
                        context.router.navigate(const SampleVideoRoute());
                      },
                      child: Text(
                        AppLocalizations.of(context)!
                            .translate("list your skills"),
                        //"List Your Skills",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      AppLocalizations.of(context)!.translate("job seeker"),
                      //"Employer",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
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
