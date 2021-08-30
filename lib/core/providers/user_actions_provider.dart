import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../features/job-seeker-module/data/models/jobseeker_profile.dart';
import '../../features/onboarding/data/models/user_login.dart';
import '../../features/registration/data/models/registration.dart';
import '../../features/registration/data/repositories/location_service_repository.dart';
import '../../main.dart';
import '../error/failures.dart';
import '../services/auth_services.dart';
import '../services/job_seeker_services.dart';

final userActionsProvider = ChangeNotifierProvider((ref) => UserNotifier());

class UserNotifier extends ChangeNotifier {
  String? _phoneNumber;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  LoginResponse? _loginResponse;
  LoginResponse? get loginResponse => _loginResponse;
  set loginResponse(LoginResponse? loginResponse) {
    Logger.root.fine(loginResponse);
    _loginResponse = loginResponse;
    notifyListeners();
  }

  JobseekerProfileResponse? _jobseekerProfileResponse;
  JobseekerProfileResponse? get jobseekerProfileResponse =>
      _jobseekerProfileResponse;
  set jobseekerProfileResponse(
      JobseekerProfileResponse? jobseekerProfileResponse) {
    Logger.root.fine(jobseekerProfileResponse);
    _jobseekerProfileResponse = jobseekerProfileResponse;
    notifyListeners();
  }

  String? _password;
  String? get password => _password;
  set password(String? password) {
    _password = password;
    notifyListeners();
  }

  FirebaseUser? _firebaseUser;
  FirebaseUser? get firebaseUser => _firebaseUser;
  set firebaseUser(FirebaseUser? firebaseUser) {
    _firebaseUser = firebaseUser;
    notifyListeners();
  }

  UserLocation? _userLocation;
  UserLocation? get userLocation => _userLocation;
  set userLocation(UserLocation? userLocation) {
    _userLocation = userLocation;
    Logger.root.fine(userLocation);
    notifyListeners();
  }

  Future<void> getUserLocation() async {
    final Either<Failure, UserLocation> locationRunner =
        await container.read(locationProvider).getUserLocation();
    locationRunner.fold(
      (failure) => Logger.root.severe("Unable to fetch location"),
      (location) => userLocation = location,
    );
    return Future.value(null);
  }

  String? get intlPhoneNumber => userLocation!.countryCode + phoneNumber!;

  Future<bool> login() async {
    try {
      await getUserLocation();
      loginResponse = await container
          .read(authClientProvider)
          .login(UserLogin(phoneNumber: intlPhoneNumber!, password: password!));
      Logger.root.fine(loginResponse);
      return loginResponse!.isLoggedIn;
    } catch (exception, stackTrace) {
      Logger.root.severe("Unable to login the user", exception, stackTrace);
      return false;
    }
  }

  Future<bool> getProfile() async {
    try {
      jobseekerProfileResponse = await container
          .read(jobseekerClientProvider)
          .profile("Token ${loginResponse!.token}");
      Logger.root.fine(jobseekerProfileResponse);
      return true;
    } catch (exception, stackTrace) {
      Logger.root.severe("Unable to get user profile", exception, stackTrace);
      return false;
    }
  }
}
