import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../onboarding/presentation/widgets/app_bar.dart';
import '../provider/otp_verification_provider.dart';
import '../provider/user_firestore_provider.dart';
import '../widgets/pin_input.dart';

class OtpVerificationPage extends ConsumerWidget {
  OtpVerificationPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: FindSkillAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(8.w, 4.h, 8.w, 4.h),
                child: Text(
                  "Verification",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context)!.translate("enter otp"),
                    //"Enter OTP",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 2.h),
                child: Form(
                  key: _otpFormKey,
                  child: PinInputField(),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_otpFormKey.currentState!.validate()) {
                      context.read(userFirestoreProvider).signInWithOTP(
                            context.read(otpFormProvider).smsCode!,
                            context.read(otpFormProvider).verificationId!,
                          );
                      context.read(userProvider).handleAuth(context);
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context)!.translate("verify"),
                    //'SUBMIT',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
