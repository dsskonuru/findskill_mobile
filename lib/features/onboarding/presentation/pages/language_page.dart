import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../main.dart';
import '../provider/language_provider.dart';

class LanguagePage extends ConsumerWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/onboarding-image.svg',
                placeholderBuilder: (BuildContext context) =>
                    const CircularProgressIndicator(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                child: Image.asset(
                  "assets/png/FindSkill-Logo.png",
                  fit: BoxFit.scaleDown,
                  height: 12.h,
                ),
              ),
              FutureBuilder<List<String>>(
                future: watch(languageProvider).languageNamesList,
                builder: (context, languagesSnapshot) {
                  if (languagesSnapshot.connectionState ==
                      ConnectionState.done) {
                    return DropdownButton<String>(
                      focusColor: Colors.white,
                      value: watch(languageProvider)
                          .language
                          .name
                          .toLowerCase(), // TODO: Remove to lowerCase post capitalization of local name
                      elevation: 5,
                      style: Theme.of(context).textTheme.overline,
                      iconEnabledColor: Colors.black,
                      items:
                          languagesSnapshot.data!.map<DropdownMenuItem<String>>(
                        (languageName) {
                          return DropdownMenuItem<String>(
                            value: languageName,
                            child: Text(languageName,
                                style: Theme.of(context).textTheme.bodyText2),
                          );
                        },
                      ).toList(),
                      hint: Text(
                        AppLocalizations.of(context)!
                            .translate("please choose a langauage"),
                        style: Theme.of(context).textTheme.caption,
                      ),
                      onChanged: (String? languageName) async {
                        changeLanguage(languageName!, context);
                      },
                    );
                  } else {
                    return const CircularProgressIndicator.adaptive();
                  }
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () => context.router.push(const IntroRoute()),
                  child: Text(
                    AppLocalizations.of(context)!.translate("register"),
                    //"REGISTER",
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!
                        .translate("already have an account?"),
                    //'Already have an account?',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () => context.router.push(LoginRoute()),
                    child: Text(
                      AppLocalizations.of(context)!.translate("login"),
                      //'Login',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> changeLanguage(String languageName, BuildContext context) async {
  String languageCode = 'en';
  for (final language in container.read(languageProvider).languages.list) {
    if (language.name == languageName) {
      languageCode = language.code;
      break;
    }
  }

  debugPrint(languageCode);
  container.read(languageProvider).language =
      container.read(languageProvider).languages.list.firstWhere(
            (language) => language.code == languageCode,
            orElse: () => initLanguage,
          );

  final _locale = Locale(container.read(languageProvider).language.code);
  FindSkillApp.setLocale(context, _locale);
}
