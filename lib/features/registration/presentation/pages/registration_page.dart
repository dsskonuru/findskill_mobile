import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../core/progress_tracker/progress_tracker.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../../../../core/theme/theme_data.dart';
import '../provider/otp_verification_provider.dart';
import '../provider/registration_provider.dart';
import '../widgets/terms_and_conditions.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _registrationKey = GlobalKey<FormState>();
  bool isChecked = false;
  static const ProgressKey pKey = ProgressKey.registration;

  @override
  void initState() {
    saveProgress(pKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FindSkillAppBar(),
      body: Consumer(
        builder: (context, watch, child) {
          Color getColor(Set<MaterialState> states) {
            const Set<MaterialState> interactiveStates = <MaterialState>{
              MaterialState.pressed,
              MaterialState.hovered,
              MaterialState.focused,
            };
            if (states.any(interactiveStates.contains)) {
              return vandylBlue;
            }
            return pumice;
          }

          return Form(
            key: _registrationKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // * REGISTRATION
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .translate("Registration"),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .translate("Need help registering?"),
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: vandylBlue, fontSize: 10.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    // * MOBILE NUMBER
                    Text(
                      AppLocalizations.of(context)!.translate("Mobile Number"),
                      //"Mobile Number",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.bodyText2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        hintText: "1234567890",
                      ),
                      autocorrect: false,
                      initialValue: watch(registrationProvider).phoneNumber,
                      onChanged: (phoneNumber) =>
                          watch(registrationProvider).phoneNumber = phoneNumber,
                      validator: (value) {
                        value = value.toString();
                        if (int.tryParse(value) == null) {
                          return "Please enter a valid mobile number";
                        }
                        return null;
                      },
                    ),
                    // IntlPhoneField(
                    //   style: Theme.of(context).textTheme.bodyText2,
                    //   decoration: InputDecoration(
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //       borderSide: BorderSide(
                    //         color: Colors.grey.withOpacity(0.4),
                    //       ),
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //       borderSide: BorderSide(
                    //         color: Colors.grey.withOpacity(0.4),
                    //       ),
                    //     ),
                    //     hintText: '9876543210',
                    //   ),
                    //   initialCountryCode: 'IN',
                    //   onChanged: (phone) {
                    //     watch(registrationProvider).phoneNumber =
                    //         phone.completeNumber;
                    //   },
                    // ),
                    SizedBox(height: 2.h),
                    // * PASSWORD
                    Text(
                      AppLocalizations.of(context)!.translate("Password"),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.bodyText2,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        hintText: "***********",
                      ),
                      obscureText: true,
                      autocorrect: false,
                      initialValue: watch(registrationProvider).password,
                      onChanged: (password) =>
                          watch(registrationProvider).password = password,
                      validator: (value) {
                        value = value.toString();
                        // if (value.length <= 8) {
                        //   return "Password too short";
                        // }
                        return null;
                      },
                    ),
                    SizedBox(height: 2.h),
                    // * FIRST NAME
                    Text(
                      AppLocalizations.of(context)!.translate("First Name"),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.bodyText2,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        hintText: AppLocalizations.of(context)!
                            .translate("First Name"),
                      ),
                      autocorrect: false,
                      initialValue: watch(registrationProvider).firstName,
                      onChanged: (name) =>
                          watch(registrationProvider).firstName = name,
                      validator: (value) {
                        value = value.toString();
                        if (value.isEmpty) {
                          return "Please enter your first name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 2.h),
                    // * LAST NAME
                    Text(
                      AppLocalizations.of(context)!.translate("Last Name"),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: Theme.of(context).textTheme.bodyText2,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                        hintText: AppLocalizations.of(context)!
                            .translate("Last Name"),
                      ),
                      autocorrect: false,
                      initialValue: watch(registrationProvider).lastName,
                      onChanged: (name) =>
                          watch(registrationProvider).lastName = name,
                      validator: (value) {
                        value = value.toString();
                        if (value.isEmpty) {
                          return "Please enter your last name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 2.h),
                    // * LOCATION
                    Text(
                      AppLocalizations.of(context)!.translate("Location"),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(height: 1.h),
                    InkWell(
                      onTap: () async {
                        await watch(registrationProvider).getUserLocation();
                        setState(() {});
                      },
                      child: TextFormField(
                        enabled: false,
                        style: Theme.of(context).textTheme.bodyText2,
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ),
                          hintText: watch(registrationProvider)
                                  .userLocation
                                  ?.district ??
                              AppLocalizations.of(context)!
                                  .translate("City Name"),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: vandylBlue,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                              watch(registrationProvider).hasAcceptedTerms =
                                  value;
                            });
                          },
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .translate("I accept the"),
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 9.0),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopupDialog(),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(context)!
                                .translate("terms & conditions"),
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontSize: 9.0, color: vandylBlue),
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .translate("to use the app."),
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 9.0),
                        ),
                      ],
                    ),

                    Center(
                      child: GradientButton(
                        onPressed: () async {
                          if (_registrationKey.currentState!.validate() &&
                              isChecked) {
                            final String number =
                                watch(registrationProvider).intlPhoneNumber!;
                            await watch(otpVerificationProvider)
                                .verifyPhone(context, number);
                            await context.router
                                .push(const OtpVerificationRoute());
                            // FindSkillRouter(
                            //   pageKey: ProgressKey.otpVerification.index,
                            // ),
                          }
                        },
                        child: Text(
                          AppLocalizations.of(context)!.translate("Register"),
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
