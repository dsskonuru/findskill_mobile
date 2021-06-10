import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../main.dart';
import '../../domain/usecases/get_languages.dart';
import '../provider/onboarding_provider.dart';

late String _value;
class LanguagePage extends ConsumerWidget {
   
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final language = watch(languageProvider);

    final listOfLang = watch(languagesProvider).call(NoParams());
    listOfLang.then((value) => Logger.root.fine(value.toString()));

    Future<void> _changeLanguage(LanguageCode language) async {

      final Locale _temp = await setLocale(language.languageCode);


      FindSkillApp.setLocale(context, _temp);
    }

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
            // Image.asset("assets/jpg/onboard1.jpg"),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
              child: Image.asset(
                "assets/png/FindSkill-Logo.png",
                fit: BoxFit.scaleDown,
                height: 12.h,
              ),
            ),
            DropdownButton<String>(
              focusColor: Colors.white,
              value: language.name,
              elevation: 5,
              style: const TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: Language.values.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value.toString(),
                  child: Text(
                    value.toString().split('.').last,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                );
              }).toList(),
              hint:  Text(
                AppLocalizations.of(context)!.translate("please choose a langauage") as String,
                //"Please choose a langauage",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String? value) async {
                //=> language.setLanguage(value!)
                _value = value!;
                //_changeLanguage(LanguageCode(value!));
              },
            ),
            ElevatedButton(
              onPressed: () //=> context.router.push(const IntroRoute()),
              {
                _changeLanguage(LanguageCode(_value));
                context.router.push(const IntroRoute());
              },
              child: Text(
                //"Set Language",
                AppLocalizations.of(context)!.translate("set language") as String,
                style: Theme.of(context).textTheme.button,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  AppLocalizations.of(context)!.translate("already have an account?") as String,
                  //'Already have an account?',
                  style: const TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () => context.router.push(const IntroRoute()),
                    child:  Text(
                      AppLocalizations.of(context)!.translate("login") as String,
                      //'Login',
                      style: const TextStyle(fontSize: 14),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}