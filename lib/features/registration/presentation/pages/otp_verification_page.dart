import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/localization/app_localization.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../../../job-seeker-module/presentation/video/provider/video_service_provider.dart';
import '../../data/models/otp_verification.dart';
import '../provider/phone_auth_provider.dart';
import '../provider/registration_provider.dart';
import '../widgets/pin_input.dart';

class OtpFormPage extends ConsumerWidget {
  OtpFormPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
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
                        await watch(phoneAuthProvider)
                            .verifyPhone(context, number);
                        startTimer(30);
                      }
                    },
                  ),
                ),
                SizedBox(height: 2.h),
                RaisedGradientButton(
                  onPressed: () async {
                    if (_otpFormKey.currentState!.validate() &&
                        watch(phoneAuthProvider).status ==
                            OtpAuthStatus.otpSent) {
                      final Either<AuthFailure, UserCredential> authRunner =
                          await context.read(phoneAuthProvider).signInWithOTP(
                                watch(phoneAuthProvider).smsCode!,
                                watch(phoneAuthProvider).verificationId!,
                              );
                      authRunner.fold(
                        (failure) {
                          Logger.root.severe("Unable to Sign In");
                        },
                        (_) async {
                          await watch(phoneAuthProvider).handleAuth(context);
                          final AuthResponse? response =
                              await watch(registrationProvider).registerUser();
                          if (response != null) {
                            await watch(videoServiceProvider).uploadVideoFile();
                            watch(registrationProvider).isEmployer!
                                ? await context.router
                                    .navigate(const EmployerRoute())
                                : await context.router
                                    .navigate(const JobseekerRoute());
                          }
                        },
                      );
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context)!.translate("Verify"),
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                // ArgonButton(
                //   height: 10.w,
                //   width: 36.w,
                //   color: vandylBlue,
                //   borderRadius: 5.w,
                //   loader: Container(
                //     padding: const EdgeInsets.all(10),
                //     child: const SpinKitRotatingCircle(color: Colors.white),
                //   ),
                //   onTap: (startLoading, stopLoading, btnState) async {
                //     if (btnState == ButtonState.Idle &&
                //         _otpFormKey.currentState!.validate() &&
                //         watch(phoneAuthProvider).status ==
                //             OtpAuthStatus.otpSent) {
                //       startLoading();
                //       final Either<AuthFailure, UserCredential> authRunner =
                //           await context.read(phoneAuthProvider).signInWithOTP(
                //                 watch(phoneAuthProvider).smsCode!,
                //                 watch(phoneAuthProvider).verificationId!,
                //               );
                //       authRunner.fold(
                //         (failure) {
                //           Logger.root.severe("Unable to Sign In");
                //           stopLoading();
                //         },
                //         (_) async {
                //           await watch(phoneAuthProvider).handleAuth(context);
                //           final AuthResponse? response =
                //               await watch(registrationProvider).registerUser();
                //           if (response != null) {
                //             await watch(videoServiceProvider).uploadVideoFile();
                //             watch(registrationProvider).isEmployer!
                //                 ? await context.router
                //                     .navigate(const EmployerRoute())
                //                 : await context.router
                //                     .navigate(const JobseekerRoute());
                //           }
                //           stopLoading();
                //         },
                //       );
                //     }
                //   },
                //   child: Text(
                //     AppLocalizations.of(context)!.translate("Verify"),
                //     style: Theme.of(context).textTheme.button,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
