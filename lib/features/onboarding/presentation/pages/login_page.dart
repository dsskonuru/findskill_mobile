import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/progress_tracker/progress_tracker.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';

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

  static const ProgressKey pKey = ProgressKey.login;

  @override
  void initState() {
    super.initState();
    saveProgress(pKey);
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
                                  const SampleVideoRoute()
                                  // FindSkillRouter(
                                  //   pageKey: ProgressKey.sampleVideo.index,
                                  // ),
                                  ),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(204, 204, 204, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
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
                              onTap: () => context.router.push(
                                  const RegistrationRoute()
                                  // FindSkillRouter(
                                  //   pageKey: ProgressKey.registration.index,
                                  // ),
                                  ),
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
                            initialValue:
                                watch(userActionsProvider).phoneNumber,
                            onChanged: (phoneNumber) =>
                                watch(userActionsProvider).phoneNumber =
                                    phoneNumber,
                            validator: (value) {
                              if (value == null &&
                                  int.tryParse(value!) == null) {
                                return "Please enter a valid mobile number";
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
                                .read(userActionsProvider)
                                .password = password,
                            validator: (value) {
                              // if (value.length <= 8) {
                              //   return "Password too short";
                              // }
                              return null;
                            },
                          ),
                          SizedBox(height: 2.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GradientButton(
                              onPressed: () async {
                                if (_loginFormKey.currentState!.validate()) {
                                  await watch(userActionsProvider)
                                      .getUserLocation();
                                  final bool hasLoggedIn =
                                      await watch(userActionsProvider).login();
                                  final bool gotProfile =
                                      await watch(userActionsProvider)
                                          .getProfile();
                                  if (hasLoggedIn && gotProfile) {
                                    await context.router
                                        .push(const JobseekerRoute());
                                    // FindSkillRouter(
                                    //   pageKey: ProgressKey.jobseekerHome.index,
                                    // ),
                                  }
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
