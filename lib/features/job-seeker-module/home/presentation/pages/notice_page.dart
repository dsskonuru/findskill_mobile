import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/localization/localization.dart';
import '../../../../../core/router/router.gr.dart';
import '../../../../../main.dart';
import '../../../../onboarding/presentation/provider/onboarding_provider.dart';
import '../../../../onboarding/presentation/widgets/app_bar.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
        'assets/video/${container.read(languageProvider).getNoticeVideoPath()}')
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
        child: Stack(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(1.h),
                // height: 64.h,
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
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      color: const Color.fromRGBO(0, 163, 225, 1),
                      child: Text(
                        AppLocalizations.of(context)!
                            .translate("under-processing") as String,
                        // "under processing text",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(76, 95, 113, 1)),
                    ),
                    onPressed: () {
                      setState(() {
                        _controller.pause();
                      });
                      context.router.navigate(
                        const OnboardingRouter(children: [LanguageRoute()]),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate("sign out")
                          as String,
                      //"Sign out",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ],
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
