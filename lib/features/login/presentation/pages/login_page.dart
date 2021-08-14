import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppLocalizations.of(context)!.translate("REGISTER"),
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.grey.shade700),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () => context.router.push(
                                const JobseekerRouter(
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
                                          Text(
                                            AppLocalizations.of(context)!.translate(
                                                "I want to find job opportunities"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption!
                                                .copyWith(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 8.0),
                                          jobseekerImage,
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 2.0),
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
                                          Text(
                                            AppLocalizations.of(context)!.translate(
                                                "I want to hire skills to get my job done"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption!
                                                .copyWith(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 8.0),
                                          employerImage,
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 2.0),
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
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    child: Form(
                      key: _loginFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              AppLocalizations.of(context)!.translate("LOG IN"),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Colors.grey.shade700),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: Theme.of(context).textTheme.bodyText2,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              hintText: "1234567890",
                            ),
                            autocorrect: false,
                            initialValue: watch(loginFormProvider).phoneNumber,
                            onChanged: (phoneNumber) => watch(loginFormProvider)
                                .phoneNumber = phoneNumber,
                            validator: (value) {
                              value = value.toString();
                              if (value.length != 10) {
                                return "Please enter the 10 digit mobile number";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 1.h),
                          TextFormField(
                            style: Theme.of(context).textTheme.bodyText1,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: AppLocalizations.of(context)!
                                  .translate("Password"),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
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
                          SizedBox(height: 2.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: RaisedGradientButton(
                              onPressed: () async {
                                // TODO: Validate the form first
                                final LoginResponse? response =
                                    await watch(loginFormProvider).login();
                                if (response != null) {
                                  return context.router.navigate(
                                    const JobseekerRoute(),
                                  );
                                }
                              },
                              child: Text(
                                AppLocalizations.of(context)!
                                    .translate("Log In"),
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
