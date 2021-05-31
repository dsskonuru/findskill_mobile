import 'package:auto_route/auto_route.dart';
import 'package:find_skill/features/onboarding/presentation/provider/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/router/router.gr.dart';

class LanguagePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final language = watch(languageProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/onboarding-image.svg',
              placeholderBuilder: (BuildContext context) =>
                  Container(child: const CircularProgressIndicator()),
            ),
            // Image.asset("assets/jpg/onboard1.jpg"),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
              child: Image.asset(
                "assets/png/FindSkill-Logo.png",
                fit: BoxFit.scaleDown,
              ),
            ),
            DropdownButton<String>(
              focusColor: Colors.white,
              value: language.name,
              elevation: 5,
              style: TextStyle(color: Colors.white),
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
              hint: Text(
                "Please choose a langauage",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String? value) => language.setLanguage(value!),
            ),
            ElevatedButton(
              onPressed: () => context.router.push(IntroRoute()),
              child: Text(
                "Set Language",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () => context.router.push(IntroRoute()),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 14),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
