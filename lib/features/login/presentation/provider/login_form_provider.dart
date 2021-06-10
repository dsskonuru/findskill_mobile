import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginFormProvider =
    ChangeNotifierProvider<LoginFormNotifier>((ref) => LoginFormNotifier());

class LoginFormNotifier extends ChangeNotifier {
  int? _mobileNumber;
  String? _password;

  int? get mobileNumber => _mobileNumber;
  String? get password => _password;

  void setMobileNo({required int number}) {
    _mobileNumber = number;
    notifyListeners();
  }

  void setPassword({required String password}) {
    _password = password;
    notifyListeners();
  }
}
