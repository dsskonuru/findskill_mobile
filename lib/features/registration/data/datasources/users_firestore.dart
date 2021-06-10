import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/error/failures.dart';
import '../models/user_model.dart';

abstract class UserDataSource {
  Future<Either<ServerFailure, void>> registerUser(UserModel user);
  Future<Either<ServerFailure, void>> signIn(AuthCredential authCredential);
  Future<Either<ServerFailure, void>> signInWithOTP(
      String smsCode, String verfId);
  Future<Either<ServerFailure, void>> signOut();
}

class UserFirestore implements UserDataSource {
  final _auth = FirebaseAuth.instance;
  final _usersRef = FirebaseFirestore.instance
      .collection('users')
      .withConverter<UserModel>(
        fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
        toFirestore: (movie, _) => movie.toJson(),
      );

  FirebaseAuth get auth => _auth;
  CollectionReference<UserModel> get usersRef => _usersRef;

  @override
  Future<Either<ServerFailure, UserModel>> registerUser(UserModel user) async {
    try {
      await _usersRef.doc(user.uid).set(user);
      debugPrint(user.toJson().toString());
      return Right(user);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, void>> signIn(AuthCredential authCreds) async {
    try {
      await _auth.signInWithCredential(authCreds);
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, void>> signInWithOTP(
      String smsCode, String verfId) async {
    try {
      final AuthCredential authCreds = PhoneAuthProvider.credential(
          verificationId: verfId, smsCode: smsCode);
      final Either<ServerFailure, void> signInOrFailure = await signIn(authCreds);
      if (signInOrFailure.isRight()) {
        return const Right(null);
      } else {
        return Left(ServerFailure());
      }
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
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
