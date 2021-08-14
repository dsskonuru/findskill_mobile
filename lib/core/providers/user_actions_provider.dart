import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../features/login/data/models/user_login.dart';
import '../../features/onboarding/data/models/language.dart';
import '../../features/onboarding/presentation/provider/language_provider.dart';
import '../../features/registration/data/models/firebase_user.dart';
import '../../main.dart';

final userActionsProvider = ChangeNotifierProvider((ref) => UserNotifier());

class UserNotifier extends ChangeNotifier {
  Language? _primaryLanguage;
  Language? get primaryLanguage => _primaryLanguage;
  set primaryLanguage(Language? primaryLanguage) {
    _primaryLanguage = primaryLanguage;
    notifyListeners();
  }

  // TODO: Merge into single User Class
  UserLogin? _userLogin;
  UserLogin? get user => _userLogin;
  set user(UserLogin? userLogin) {
    _userLogin = userLogin;
    notifyListeners();
  }

  FirebaseUser? _firebaseUser;
  FirebaseUser? get firebaseUser => _firebaseUser;
  set firebaseUser(FirebaseUser? firebaseUser) {
    _firebaseUser = firebaseUser;
    notifyListeners();
  }

  // TODO: resolve primary language here and language from provider
  Future<void> changeLanguage(String languageName, BuildContext context) async {
    String languageCode = 'en';
    for (final language in container.read(languageProvider).languages.list) {
      if (language.name == languageName) {
        languageCode = language.code;
        break;
      }
    }
    Logger.root.fine('Selected Language Code: $languageCode');
    container.read(languageProvider).language =
        container.read(languageProvider).languages.list.firstWhere(
              (language) => language.code == languageCode,
              orElse: () => initLanguage,
            );
    container.read(userActionsProvider).primaryLanguage =
        container.read(languageProvider).language;

    final _locale = Locale(container.read(languageProvider).language.code);
    FindSkillApp.setLocale(context, _locale);
  }
}
