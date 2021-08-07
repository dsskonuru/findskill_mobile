import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/theme/app_bar.dart';
import '../../../../core/theme/raised_gradient_button.dart';
import '../provider/phone_auth_provider.dart';
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
                Row(
                  children: [
                    // TODO: Implement Counter
                    Text(
                      AppLocalizations.of(context)!.translate("00:60"),
                      style: Theme.of(context).textTheme.caption,
                    ),

                    TextButton(
                      onPressed: () {
                        // TODO: Resend OTP
                      },
                      child: Text(
                        AppLocalizations.of(context)!.translate("Resend OTP"),
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                RaisedGradientButton(
                  onPressed: () async {
                    if (_otpFormKey.currentState!.validate()) {
                      context.read(userFirestoreProvider).signInWithOTP(
                            context.read(phoneAuthProvider).smsCode!,
                            context.read(phoneAuthProvider).verificationId!,
                          );
                      context.read(userActionsProvider).handleAuth(context);
                    }
                  },
                  child: Text(
                    AppLocalizations.of(context)!.translate("Verify"),
                    style: Theme.of(context).textTheme.button,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
