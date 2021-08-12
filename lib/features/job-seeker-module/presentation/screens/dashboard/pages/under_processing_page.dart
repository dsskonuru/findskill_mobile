import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../core/localization/app_localization.dart';
import '../../../../../../core/router/router.gr.dart';
import '../../../../../../core/theme/app_bar.dart';
import '../../../../../../core/theme/raised_gradient_button.dart';

class UnderProcessingPage extends ConsumerWidget {
  const UnderProcessingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: const FindSkillAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                  padding: EdgeInsets.all(4.w),
                  color: const Color.fromRGBO(0, 163, 225, 1),
                  child: Text(
                    AppLocalizations.of(context)!.translate("under-processing"),
                    // "under processing text",
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              RaisedGradientButton(
                
                onPressed: () {
                  context.router.navigate(
                    const OnboardingRoute(),
                  );
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
      ),
    );
  }
}
