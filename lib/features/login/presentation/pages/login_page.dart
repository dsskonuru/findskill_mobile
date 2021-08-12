import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../../data/models/user_login.dart';
import '../provider/login_form_provider.dart';

// TODO: Check if primarily JS / Emp
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  late Image jobseekerImage;
  late Image employerImage;

  @override
  void initState() {
    super.initState();
    jobseekerImage = Image.asset(
      "assets/png/jobseeker.png",
      fit: BoxFit.scaleDown,
      height: 18.h,
    );
    employerImage = Image.asset(
      "assets/png/employer.png",
      fit: BoxFit.scaleDown,
      height: 18.h,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(jobseekerImage.image, context);
    precacheImage(employerImage.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const FindSkillAppBar(),
      body: Consumer(
        builder: (context, watch, child) => SafeArea(
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppLocalizations.of(context)!.translate("REGISTER"),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () => context.router.push(
                                const JobSeekerRouter(
                                  children: [
                                    VideoRouter(
                                      children: [
                                        SampleVideoRoute(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(204, 204, 204, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          jobseekerImage,
                                          const SizedBox(height: 8.0),
                                          Text(
                                            AppLocalizations.of(context)!.translate(
                                                "I want to find job opportunities"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .translate("JOBSEEKER"),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Flexible(
                            child: InkWell(
                              onTap: () => context.router.root
                                  .push(const RegistrationRoute()),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(204, 204, 204, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          employerImage,
                                          const SizedBox(height: 8.0),
                                          Text(
                                            AppLocalizations.of(context)!.translate(
                                                "I want to hire skills to get my job done"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .translate("EMPLOYER"),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: const Color.fromRGBO(204, 204, 204, 1),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                    child: Form(
                      key: _loginFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              AppLocalizations.of(context)!.translate("LOGIN"),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: IntlPhoneField(
                              style: Theme.of(context).textTheme.bodyText1,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                counterStyle:
                                    Theme.of(context).textTheme.overline,
                                hintText: AppLocalizations.of(context)!
                                    .translate("Mobile Number"),
                                border: const OutlineInputBorder(),
                              ),
                              initialCountryCode: 'IN',
                              onChanged: (number) => context
                                  .read(loginFormProvider)
                                  .phoneNumber = number.completeNumber,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: TextFormField(
                              style: Theme.of(context).textTheme.bodyText1,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: AppLocalizations.of(context)!
                                    .translate("Password"),
                                border: const OutlineInputBorder(),
                              ),
                              obscureText: true,
                              autocorrect: false,
                              onChanged: (password) => context
                                  .read(loginFormProvider)
                                  .password = password,
                              validator: (value) {
                                value = value.toString();
                                if (value.length <= 8) {
                                  return "Password too short";
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Center(
                            child: RaisedGradientButton(
                              onPressed: () async {
                                // TODO: Validate the form first
                                final LoginResponse? response =
                                    await watch(loginFormProvider).login();
                                if (response != null) {
                                  return context.router.navigate(
                                    const JobSeekerRouter(
                                        children: [DashboardRoute()]),
                                  );
                                }
                              },
                              child: Text(
                                AppLocalizations.of(context)!
                                    .translate("Login"),
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
