import 'package:auto_route/auto_route.dart';
import 'package:find_skill/features/registration/presentation/provider/otp_verification_provider.dart';
import 'package:find_skill/features/registration/presentation/provider/user_firestore_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../onboarding/presentation/widgets/app_bar.dart';
import '../provider/registration_form_provider.dart';
import '../widgets/chips.dart';

class RegistrationPage extends ConsumerWidget {
  RegistrationPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _registrationFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: FindSkillAppBar(),
      body: SafeArea(
        child: Form(
          key: _registrationFormKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 4.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("registration")
                        as String,
                    //"Registration",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("mobile number")
                        as String,
                    //"Mobile Number",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: Theme.of(context).textTheme.bodyText2,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: '919876543210',
                    ),
                    autocorrect: false,
                    initialValue: watch(registrationFormProvider)
                        .mobileNumber
                        ?.toString(),
                    onChanged: (number) => watch(registrationFormProvider)
                        .setMobileNo(number: number),
                    validator: (value) {
                      value = value.toString();
                      if (value.contains(RegExp(r"\[A-Z]|[a-z]"))) {
                        return "Please include the country code followed by +";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("password")
                        as String,
                    //"Password",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: Theme.of(context).textTheme.bodyText2,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    autocorrect: false,
                    initialValue: watch(registrationFormProvider).password,
                    onChanged: (password) => watch(registrationFormProvider)
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
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("full Name")
                        as String,
                    //"Full Name",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: Theme.of(context).textTheme.bodyText2,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: 'Arjun Kumar',
                    ),
                    autocorrect: false,
                    initialValue: watch(registrationFormProvider).name,
                    onChanged: (name) =>
                        watch(registrationFormProvider).setName(name: name),
                    validator: (value) {
                      value = value.toString();
                      if (value.isEmpty) {
                        return "Please enter your full name";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Text(
                    AppLocalizations.of(context)!.translate("city name")
                        as String,
                    //"City Name",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: Theme.of(context).textTheme.bodyText2,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: 'Mumbai',
                    ),
                    autocorrect: false,
                    initialValue: watch(registrationFormProvider).cityName,
                    onChanged: (cityName) => watch(registrationFormProvider)
                        .setCityName(cityName: cityName),
                    validator: (value) {
                      value = value.toString();
                      if (value.isEmpty) {
                        return "Please enter your city name";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                  child: Text(
                    AppLocalizations.of(context)!
                        .translate("what jobs are you intersted in?") as String,
                    //"What jobs are you interested in?",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 2.h),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            watch(registrationFormProvider)
                                .toggleJobMenuPressed();
                            context.router.navigate(const JobsCategoryRoute());
                          },
                          child: Icon(
                            Icons.add_circle,
                            color: Theme.of(context).primaryColor,
                            size: 7.h,
                          ),
                        ),
                        if (watch(registrationFormProvider)
                            .selectedJobs
                            .isNotEmpty)
                          DisplayChip(
                              watch(registrationFormProvider).selectedJobs),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_registrationFormKey.currentState!.validate()) {
                          final String number =
                              watch(registrationFormProvider).mobileNumber!;
                          debugPrint(number);
                          await verifyPhone(context, number);
                          await context.router.navigate(OtpVerificationRoute());
                        }
                      },
                      child: Text(
                        AppLocalizations.of(context)!.translate("submit")
                            as String,
                        //'SUBMIT',
                        style: Theme.of(context).textTheme.button,
                      )),
                )
              ],
            ),
            // if (watch(registrationFormProvider).jobMenuPressed)
            //   const JobsCategoryView(),
          ),
        ),
      ),
    );
  }
}

Future<void> verifyPhone(BuildContext context, String phoneNo) async =>
    FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (AuthCredential authCredential) {
        context.read(userFirestoreProvider).signIn(authCredential);
      },
      verificationFailed: (FirebaseAuthException verificationFailed) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(verificationFailed.message!)));
      },
      codeSent: (String verificationId, int? forceResend) {
        context.read(otpFormProvider).setVerificationId(verificationId);
        context.read(otpFormProvider).setCodeSent(codeSent: true);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
