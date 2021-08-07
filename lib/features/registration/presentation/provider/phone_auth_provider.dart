import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/user_actions_provider.dart';

final phoneAuthProvider =
    ChangeNotifierProvider<OtpFormNotifier>((ref) => OtpFormNotifier());

class OtpFormNotifier extends ChangeNotifier {
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

  bool _codeSent = false;
  bool get codeSent => _codeSent;
  set codeSent(bool codeSent) {
    _codeSent = codeSent;
    notifyListeners();
  }

  String? _uid;
  String? get uid => _uid;
  set uid(String? uid) {
    _uid = uid;
    // container.read(userActionsProvider).;
    notifyListeners();
  }

  Future<void> verifyPhone(BuildContext context, String phoneNo) async =>
      FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (AuthCredential authCredential) {
          context.read(userFirestoreProvider).signIn(authCredential);
        },
        verificationFailed: (FirebaseAuthException verificationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(verificationFailed.message!)));
        },
        codeSent: (String verificationId, int? forceResend) {
          context.read(phoneAuthProvider).verificationId = verificationId;
          context.read(phoneAuthProvider).codeSent = true;
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
}
