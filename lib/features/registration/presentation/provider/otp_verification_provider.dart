import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/services/auth_services.dart';
import '../../../../main.dart';
import '../../data/models/registration.dart';
import 'registration_provider.dart';

enum OtpAuthStatus {
  unverified,
  otpSent,
  verified,
  verificationFailed,
}

final otpVerificationProvider =
    ChangeNotifierProvider<OtpFormNotifier>((ref) => OtpFormNotifier());

class OtpFormNotifier extends ChangeNotifier {
  OtpAuthStatus status = OtpAuthStatus.unverified;

  String? _verificationId;
  String? get verificationId => _verificationId;
  set verificationId(String? id) {
    _verificationId = id;
    notifyListeners();
  }

  String? _smsCode;
  String? get smsCode => _smsCode;
  set smsCode(String? code) {
    _smsCode = code;
    notifyListeners();
  }

  Future<void> verifyPhone(BuildContext context, String phoneNumber) async {
    status = OtpAuthStatus.unverified;
    return container.read(authProvider).verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (AuthCredential authCredential) {
            status = OtpAuthStatus.verified;
            container.read(authProvider).signInWithCredential(authCredential);
          },
          verificationFailed:
              (FirebaseAuthException firebaseAuthException) {
            container
                .read(crashlyticsProvider)
                .recordError(firebaseAuthException, null);
            // cannot get stack trace for firebaseAuthException
            status = OtpAuthStatus.verificationFailed;
          },
          codeSent: (String _verificationId, int? forceResendingToken) {
            verificationId = _verificationId;
            status = OtpAuthStatus.otpSent;
            // forceResendingToken only works with Android
          },
          codeAutoRetrievalTimeout: (String verificationId) {},
        );
  }

  Future<AuthFailure?> signInWithOTP() async {
    try {
      final AuthCredential authCredential = PhoneAuthProvider.credential(
          verificationId: verificationId!, smsCode: smsCode!);
      final UserCredential userCredential = await container
          .read(authProvider)
          .signInWithCredential(authCredential);
      container.read(userActionsProvider).firebaseUser = FirebaseUser(
        phoneNumber: container.read(registrationProvider).intlPhoneNumber!,
        uid: userCredential.user!.uid,
      );
      return null;
    } catch (exception, stackTrace) {
      container.read(crashlyticsProvider).recordError(exception, stackTrace);
      return AuthFailure(exception.toString());
    }
  }

  Future<void> otpVerified() async {
    try {
      final OtpVerification request = OtpVerification(
        phoneNumber: container.read(registrationProvider).intlPhoneNumber!,
        isVerified: true,
      );
      final AuthResponse response =
          await container.read(authClientProvider).otpVerification(request);
      Logger.root.fine(response);
    } catch (exception, stackTrace) {
      container.read(crashlyticsProvider).recordError(exception, stackTrace);
    }
  }
}
