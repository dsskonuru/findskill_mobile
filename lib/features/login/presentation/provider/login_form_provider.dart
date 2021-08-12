import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/services/auth_services.dart';
import '../../../../main.dart';
import '../../data/models/user_login.dart';

final loginFormProvider =
    ChangeNotifierProvider<LoginFormNotifier>((ref) => LoginFormNotifier());

class LoginFormNotifier extends ChangeNotifier {
  String? _phoneNumber;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  String? _password;
  String? get password => _password;
  set password(String? password) {
    _password = password;
    notifyListeners();
  }

  Future<LoginResponse?> login() async {
    try {
      final LoginResponse response = await container
          .read(authClientProvider)
          .login(UserLogin(phoneNumber: phoneNumber!, password: password!));
      Logger.root.fine(response);
      return response;
    } catch (exception, stack) {
      Logger.root.severe("Unable to login the user", exception, stack);
      return null;
    }
  }
}
