import 'package:auto_route/auto_route.dart';
import 'package:find_skill/features/login/presentation/provider/login_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/localization.dart';
import '../../../../core/router/router.gr.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      // appBar: FindSkillAppBar(),
      body: SafeArea(
        child: Form(
          key: _loginFormKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                  child: Image.asset(
                    "assets/png/FindSkill-Logo.png",
                    fit: BoxFit.scaleDown,
                    height: 12.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 4.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("login") as String,
                    //"Login",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)!.translate("mobile number")
                          as String,
                      //"Mobile Number",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.bodyText2,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: '+919876543210',
                    ),
                    autocorrect: false,
                    onChanged: (number) => context
                        .read(loginFormProvider)
                        .setMobileNo(number: int?.parse(number)),
                    validator: (value) {
                      value = value.toString();
                      if (value.length != 10 ||
                          value.contains(RegExp(r"\[A-Z]|[a-z]"))) {
                        return "Invalid Phone Number";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)!.translate("password")
                          as String,
                      //"Password",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: TextFormField(
                    style: Theme.of(context).textTheme.bodyText2,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    autocorrect: false,
                    onChanged: (password) => context
                        .read(loginFormProvider)
                        .setPassword(password: password),
                    validator: (value) {
                      value = value.toString();
                      if (value.length <= 8) {
                        return "Password too short";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () =>  context.router.root.navigate(const NoticeRoute()),
                      child: Text(
                        AppLocalizations.of(context)!.translate("login")
                            as String,
                        //'Login',
                        style: Theme.of(context).textTheme.button,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
