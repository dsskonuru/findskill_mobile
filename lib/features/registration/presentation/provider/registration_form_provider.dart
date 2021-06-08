import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationFormProvider =
    ChangeNotifierProvider((ref) => RegistrationFormNotifier());

class RegistrationFormNotifier extends ChangeNotifier {
  int? _mobileNumber;
  String? _password;
  String? _name;
  String? _cityName;

  int? get mobileNumber => _mobileNumber;
  String? get smsCode => _password;
  String? get codeSent => _name;
  String? get phoneNo => _cityName;

  void setMobileNo({required int number}) {
    _mobileNumber = number;
    notifyListeners();
  }

  void setPassword({required String password}) {
    _password = password;
    notifyListeners();
  }

  void setName({required String name}) {
    _name = name;
    notifyListeners();
  }

  void setCityName({required String cityName}) {
    _cityName = cityName;
    notifyListeners();
  }
}
