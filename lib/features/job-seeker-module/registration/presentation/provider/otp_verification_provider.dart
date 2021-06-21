import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpFormProvider =
    ChangeNotifierProvider<OtpFormNotifier>((ref) => OtpFormNotifier());

class OtpFormNotifier extends ChangeNotifier {
  String? _verificationId;
  String? _smsCode;
  bool? _codeSent;
  String? _uid;

  String? get verificationId => _verificationId;
  String? get smsCode => _smsCode;
  bool? get codeSent => _codeSent;
  String? get uid => _uid;

  void setVerificationId(String id) {
    _verificationId = id;
    notifyListeners();
  }

  void setSmsCode(String code) {
    _smsCode = code;
    notifyListeners();
  }

  void setCodeSent({required bool codeSent}) {
    _codeSent = codeSent;
    notifyListeners();
  }

  void setUid(String? uid) {
    _uid = uid;
    notifyListeners();
  }
}
