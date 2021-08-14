import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/theme_data.dart';
import '../../../registration/presentation/provider/registration_provider.dart';

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
    return Consumer(
      builder: (context, watch, child) => Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/png/findskill-logo-side-text.png",
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(smaltBlue),
                        ),
                        onPressed: () {
                          setState(() {
                            _controller.pause();
                          });
                          watch(registrationProvider).isEmployer = true;
                          context.router.root.push(const RegistrationRoute());
                        },
                        child: Text(
                          AppLocalizations.of(context)!
                              .translate("Find Skills"),
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(vandylBlue),
                        ),
                        onPressed: () {
                          setState(() {
                            _controller.pause();
                          });
                          watch(registrationProvider).isEmployer = false;
                          context.router.root
                              .push(const JobseekerRouter(children: [
                            VideoRouter(children: [SampleVideoRoute()])
                          ]));
                        },
                        child: Text(
                          AppLocalizations.of(context)!
                              .translate("List your skill"),
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
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
