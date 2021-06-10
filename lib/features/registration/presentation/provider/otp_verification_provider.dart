import 'package:find_skill/features/registration/presentation/provider/registration_form_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../main.dart';

final otpFormProvider =
    ChangeNotifierProvider<OtpFormNotifier>((ref) => OtpFormNotifier());

class OtpFormNotifier extends ChangeNotifier {
  String? _verificationId;
  String? _smsCode;
  bool? _codeSent;
  final int? _phoneNo = container.read(registrationFormProvider).mobileNumber;

  String? _uid;

  String? get verificationId => _verificationId;
  String? get smsCode => _smsCode;
  bool? get codeSent => _codeSent;
  int? get phoneNo => _phoneNo;

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
