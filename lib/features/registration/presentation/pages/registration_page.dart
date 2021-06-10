import 'package:auto_route/auto_route.dart';
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
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 4.h),
                    child: Text(
                      AppLocalizations.of(context)!.translate("registration") as String,
                      //"Registration",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                    child: Text(
                      AppLocalizations.of(context)!.translate("mobile number") as String,
                      //"Mobile Number",
                      style: Theme.of(context).textTheme.subtitle1,
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
                          .read(registrationFormProvider)
                          .setMobileNo(number: int.parse(number)),
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
                    child: Text(
                      AppLocalizations.of(context)!.translate("password") as String,
                      //"Password",
                      style: Theme.of(context).textTheme.subtitle1,
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
                          .read(registrationFormProvider)
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
                      AppLocalizations.of(context)!.translate("full Name") as String,
                      //"Full Name",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText2,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        hintText: 'Arjun Kumar',
                      ),
                      autocorrect: false,
                      onChanged: (name) => context
                          .read(registrationFormProvider)
                          .setName(name: name),
                      validator: (value) {
                        value = value.toString();
                        if (value.isNotEmpty) {
                          return "Please enter your full name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                    child: Text(
                      AppLocalizations.of(context)!.translate("city name") as String,
                      //"City Name",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText2,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        hintText: 'Mumbai',
                      ),
                      autocorrect: false,
                      onChanged: (cityName) => context
                          .read(registrationFormProvider)
                          .setCityName(cityName: cityName),
                      validator: (value) {
                        value = value.toString();
                        if (value.isNotEmpty) {
                          return "Please enter your city name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                    child: Text(
                      AppLocalizations.of(context)!.translate("what jobs are you intersted in?") as String,
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
                              context.router
                                  .navigate(const JobsCategoryRoute());
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
                        onPressed: () => {},
                        child: Text(
                          AppLocalizations.of(context)!.translate("submit") as String,
                          //'SUBMIT',
                          style: Theme.of(context).textTheme.button,
                        )),
                  )
                ],
              ),
            ),
            // if (watch(registrationFormProvider).jobMenuPressed)
            //   const JobsCategoryView(),
          ),
        ),
      ),
    );
  }
}
