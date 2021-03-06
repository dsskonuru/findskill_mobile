import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/progress_tracker/progress_tracker.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../provider/otp_verification_provider.dart';
import '../provider/registration_provider.dart';
import '../widgets/pin_input.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();
  static const ProgressKey pKey = ProgressKey.otpVerification;

  @override
  void initState() {
    saveProgress(pKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) => Scaffold(
        appBar: const FindSkillAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.translate("Verification"),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 4.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)!.translate("Enter OTP"),
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Form(
                    key: _otpFormKey,
                    child: PinInputField(),
                  ),
                  SizedBox(height: 2.h),
                  Center(
                    child: ArgonTimerButton(
                      elevation: 0.0,
                      initialTimer: 30,
                      height: 20.0,
                      width: 25.w,
                      minWidth: 25.w,
                      color: Colors.white,
                      child: Text(
                        AppLocalizations.of(context)!.translate("Resend OTP"),
                        style: Theme.of(context).textTheme.overline,
                      ),
                      loader: (timeLeft) {
                        return Text(
                          "00:$timeLeft",
                          style: Theme.of(context).textTheme.overline,
                        );
                      },
                      onTap: (startTimer, btnState) async {
                        if (btnState == ButtonState.Idle) {
                          final String number =
                              watch(registrationProvider).phoneNumber!;
                          await watch(otpVerificationProvider)
                              .verifyPhone(context, number);
                          startTimer(30);
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 2.h),
                  GradientButton(
                    onPressed: () async {
                      // TODO: Handle else cases
                      if (_otpFormKey.currentState!.validate()) {
                        final authRunner = await context
                            .read(otpVerificationProvider)
                            .signInWithOTP();
                        if (authRunner != null) {
                          Logger.root.severe("Unable to Sign In");
                        } else {
                          final bool hasRegistered =
                              await watch(registrationProvider).registerUser();
                          if (hasRegistered) {
                            await context.router
                                .push(const SkillsChoiceRoute());
                          }
                        }
                      }
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate("Verify"),
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
