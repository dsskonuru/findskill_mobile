import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as fauth;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../main.dart';
import '../../data/models/firebase_user.dart';
import 'registration_provider.dart';

enum OtpAuthStatus {
  unverified,
  otpSent,
  verified,
  verificationFailed,
}

final phoneAuthProvider =
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
    container.read(crashlyticsProvider).setUserIdentifier(_uid ?? '');
    notifyListeners();
  }

  Future<void> verifyPhone(BuildContext context, String phoneNumber) async =>
      container.read(authProvider).verifyPhoneNumber(
            phoneNumber: phoneNumber,
            verificationCompleted: (fauth.AuthCredential authCredential) {
              status = OtpAuthStatus.verified;
              container.read(authProvider).signInWithCredential(authCredential);
            },
            verificationFailed:
                (fauth.FirebaseAuthException firebaseAuthException) {
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

  Future<Either<AuthFailure, String?>> handleAuth(BuildContext context) async {
    try {
      container.read(authProvider).authStateChanges().listen(
        (authUser) async {
          if (authUser == null) {
            container.read(userActionsProvider).user = null;
            Logger.root.fine('User is signed out');
            await context.router.push(const LoginRoute());
            uid = null;
          } else {
            uid = authUser.uid;
            // (container.read(registrationProvider).isEmployer != null &&
            //         !container.read(registrationProvider).isEmployer!)
            //     : context.router.push(const EmployerRoute());
            // await container.read(usersProvider).doc(uid).get().then(
            //   (DocumentSnapshot<FirebaseUser> userSnapshot) async {
            //     if (userSnapshot.exists) {
            //       Logger.root.fine("User already exsists");
            //       container.read(userActionsProvider).firebaseUser =
            //           userSnapshot.data();
            //     } else {
            //       Logger.root.fine("User is added");
            //       await container
            //           .read(usersProvider)
            //           .doc(uid)
            //           .set(container.read(userActionsProvider).firebaseUser!);
            //     }
            //     container.read(registrationProvider).isEmployer!
            //         ? await context.router.push(
            //             FindSkillRouter(
            //               pageKey: ProgressKey.employerHome.index,
            //             ),
            //           )
            //         : await context.router.push(
            //             FindSkillRouter(
            //               pageKey: ProgressKey.jobseekerHome.index,
            //             ),
            //           );
            //   },
            // );
          }
        },
      );
      return Right(uid);
    } catch (error, stackTrace) {
      container.read(crashlyticsProvider).recordError(error, stackTrace);
      return Left(AuthFailure(error.toString()));
    }
  }

  Future<Either<AuthFailure, UserCredential>> signInWithOTP(
      String smsCode, String verfId) async {
    try {
      final AuthCredential authCredential = PhoneAuthProvider.credential(
          verificationId: verfId, smsCode: smsCode);
      final UserCredential userCredential = await container
          .read(authProvider)
          .signInWithCredential(authCredential);
      container.read(userActionsProvider).firebaseUser = FirebaseUser(
        phoneNumber: container.read(registrationProvider).phoneNumber!,
        uid: userCredential.user!.uid,
      );
      return Right(userCredential);
    } on Exception {
      return Left(AuthFailure());
    }
  }
}
