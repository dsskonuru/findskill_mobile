import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../../../../core/theme/theme_data.dart';
import '../provider/language_provider.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late Image findskillLogoSideText;
  late Image onbordingImage;

  @override
  void initState() {
    super.initState();
    findskillLogoSideText = Image.asset(
      "assets/png/findskill-logo-side-text.png",
      fit: BoxFit.scaleDown,
      height: 12.h,
    );
    onbordingImage = Image.asset(
      "assets/png/onboarding-image.png",
      fit: BoxFit.scaleDown,
      height: 36.h,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(findskillLogoSideText.image, context);
    precacheImage(onbordingImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.w),
                    child: onbordingImage,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.w),
                    child: findskillLogoSideText,
                  ),
                  Text(
                    AppLocalizations.of(context)!.translate("Select Language"),
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(
                    width: 30.w,
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10.0),
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      focusColor: Colors.white,
                      value: watch(languageProvider)
                          .language
                          .name
                          .toLowerCase(), // TODO: Remove to lowerCase post capitalization of local name
                      elevation: 5,
                      style: Theme.of(context).textTheme.subtitle2,
                      iconEnabledColor: Colors.black,
                      items: watch(languageProvider)
                          .languageNamesList
                          .map<DropdownMenuItem<String>>(
                        (languageName) {
                          return DropdownMenuItem<String>(
                            value: languageName,
                            child: Text(languageName,
                                style: Theme.of(context).textTheme.bodyText2),
                          );
                        },
                      ).toList(),

                      onChanged: (String? languageName) async {
                        await watch(userActionsProvider)
                            .changeLanguage(languageName!, context);
                      },
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RaisedGradientButton(
                      onPressed: () => context.router.push(const IntroRoute()),
                      child: Text(
                        AppLocalizations.of(context)!.translate("Register"),
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!
                            .translate("Already have an account? "),
                        style: Theme.of(context).textTheme.caption,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                        ),
                        onPressed: () =>
                            context.router.push(const LoginRoute()),
                        child: Text(
                          AppLocalizations.of(context)!.translate("Login"),
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: vandylBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
