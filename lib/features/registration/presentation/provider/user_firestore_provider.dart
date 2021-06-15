import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/router/router.gr.dart';
import '../../data/datasources/users_firestore.dart';
import '../../data/models/user_model.dart';

final userFirestoreProvider = Provider((ref) => UserFirestore());

final userProvider = ChangeNotifierProvider((ref) => UserNotifier());

class UserNotifier extends ChangeNotifier {
  final UserFirestore _userFirestore = UserFirestore();
  UserModel? _user;

  UserFirestore get userFirestore => _userFirestore;
  UserModel? get user => _user;

  void setUser(UserModel? user) {
    _user = user;
    notifyListeners();
  }

  Future<Either<ServerFailure, void>> handleAuth(BuildContext context) async {
    try {
      _userFirestore.auth.authStateChanges().listen(
        (authUser) async {
          context.router.root.navigate(const UnderProcessingRoute());
          // if (authUser == null) {
          //   _user = null;
          //   debugPrint('User is currently signed out!');
          //   context.router.root.navigate(const LanguageRoute());
          // } else {
          //   context.read(otpFormProvider).setUid(authUser.uid);
          //   await _userFirestore.usersRef.doc(authUser.uid).get().then(
          //     (DocumentSnapshot<UserModel> userSnapshot) async {
          //       if (userSnapshot.exists) {
          //         _user = userSnapshot.data();
          //         await context.router.root.navigate(const HomeRoute());
          //       } else {
          //         debugPrint('User requires registration');
          //         await context.router.navigate(
          //           RegistrationRoute(),
          //         );
          //       }
          //     },
          //   );
        },
      );
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
