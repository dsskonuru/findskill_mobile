import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/error/failures.dart';
import '../../features/login/data/models/user_login.dart';

class UserFirestore {
  final _auth = FirebaseAuth.instance;
  final _usersRef = FirebaseFirestore.instance
      .collection('users')
      .withConverter<UserLogin>(
        fromFirestore: (snapshot, _) => UserLogin.fromJson(snapshot.data()!),
        toFirestore: (movie, _) => movie.toJson(),
      );

  FirebaseAuth get auth => _auth;
  CollectionReference<UserLogin> get usersRef => _usersRef;

  // Future<Either<ServerFailure, UserLogin>> registerUser(UserLogin user) async {
  //   try {
  //     await _usersRef.doc(user.uid).set(user);
  //     debugPrint(user.toJson().toString());
  //     return Right(user);
  //   } on Exception {
  //     return Left(ServerFailure());
  //   }
  // }

  Future<Either<ServerFailure, void>> signIn(AuthCredential authCreds) async {
    try {
      await _auth.signInWithCredential(authCreds);
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  Future<Either<ServerFailure, void>> signInWithOTP(
      String smsCode, String verfId) async {
    try {
      final AuthCredential authCreds = PhoneAuthProvider.credential(
          verificationId: verfId, smsCode: smsCode);
      final Either<ServerFailure, void> signInOrFailure =
          await signIn(authCreds);
      if (signInOrFailure.isRight()) {
        return const Right(null);
      } else {
        return Left(ServerFailure());
      }
    } on Exception {
      return Left(ServerFailure());
    }
  }

  Future<Either<ServerFailure, void>> signOut() async {
    try {
      await _auth.signOut();
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}

// TODO: Setup Phone Auth for iOS
