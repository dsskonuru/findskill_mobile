// TODO: Build the UI along with appropriate tests for Notifications Page @dheerajv09

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

import '../../../../../../../main.dart';
import '../../../../../../core/localization/app_localization.dart';
import '../../../../../../core/providers/language_provider.dart';
import '../../../../../../core/theme/app_bar.dart';
import '../../../../../../core/theme/raised_gradient_button.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
      appBar: const FindSkillAppBar(),
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
                            .translate("under-processing"),
                        // "under processing text",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 54.h,
                  ),
                  GradientButton(
                    onPressed: () {
                      setState(() {
                        _controller.pause();
                      });
                      // context.router.push(
                      //   FindSkillRouter(
                      //     pageKey: ProgressKey.onboarding.index,
                      //   ),
                      // );
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate("sign out"),
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
