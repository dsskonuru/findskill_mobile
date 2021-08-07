import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:findskill/features/onboarding/presentation/provider/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../core/router/router.gr.dart';
import '../../features/job-seeker-module/data/models/user_login.dart';
import '../../features/job-seeker-module/data/sources/users_firestore.dart';
import '../../features/onboarding/data/models/language.dart';
import '../../features/registration/presentation/provider/phone_auth_provider.dart';
import '../../main.dart';
import '../error/failures.dart';

final userActionsProvider = ChangeNotifierProvider((ref) => UserNotifier());
final userFirestoreProvider = Provider((ref) => UserFirestore());

class UserNotifier extends ChangeNotifier {
  Language? _primaryLanguage;
  Language? get primaryLanguage => _primaryLanguage;
  set primaryLanguage(Language? primaryLanguage) {
    _primaryLanguage = primaryLanguage;
    notifyListeners();
  }

  final UserFirestore _userFirestore = UserFirestore();

  // TODO: Merge into single User Class
  UserLogin? _user;
  UserLogin? get user => _user;
  set user(UserLogin? user) {
    _user = user;
    notifyListeners();
  }

  String? _uid;
  String? get uid => _uid;
  set uid(String? uid) {
    _uid = uid;
    notifyListeners();
  }

  Future<Either<ServerFailure, void>> handleAuth(BuildContext context) async {
    try {
      _userFirestore.auth.authStateChanges().listen(
        (authUser) async {
          if (authUser == null) {
            _user = null;
            debugPrint('User is currently signed out!');
            context.router.root.navigate(const OnboardingRoute());
          } else {
            uid = authUser.uid;
            context.read(phoneAuthProvider).uid = authUser.uid;
            await _userFirestore.usersRef.doc(authUser.uid).get().then(
              (DocumentSnapshot<UserLogin> userSnapshot) async {
                if (userSnapshot.exists) {
                  _user = userSnapshot.data();
                  await context.router.root
                      .navigate(const JobSeekerRouter(children: [HomeRoute()]));
                } else {
                  debugPrint('User requires registration');
                  // TODO: Repairs
                  await context.router.root
                      .navigate(const JobSeekerRouter(children: [HomeRoute()]));
                  // await context.router
                  //     .navigate(const JobSeekerRouter(children: [
                  //   VideoRouter(children: [SampleVideoRoute()])
                  // ]));
                }
              },
            );
          }
        },
      );
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
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
