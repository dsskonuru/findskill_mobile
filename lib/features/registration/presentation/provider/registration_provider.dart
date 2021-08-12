import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/error/failures.dart';
import '../../../../main.dart';
import '../../../job-seeker-module/data/repositories/location_service_repository.dart';
import '../../data/models/user_location.dart';

final registrationProvider =
    ChangeNotifierProvider.autoDispose<RegistrationNotifier>(
        (ref) => RegistrationNotifier());

class RegistrationNotifier extends ChangeNotifier {
  String? _userName;
  String? get userName => _userName;
  set userName(String? userName) {
    _userName = userName;
    notifyListeners();
  }

  String? _phoneNumber;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? number) {
    _phoneNumber = number;
    notifyListeners();
  }

  String? _password;
  String? get password => _password;
  set password(String? password) {
    _password = password;
    notifyListeners();
  }

  String? _fullName;
  String? get fullName => _fullName;
  set fullName(String? fullName) {
    _fullName = fullName;
    notifyListeners();
  }

  UserLocation? _userLocation;
  UserLocation? get userLocation => _userLocation;
  set userLocation(UserLocation? userLocation) {
    _userLocation = userLocation;
    Logger.root.fine(userLocation);
    notifyListeners();
  }

  bool? _hasAcceptedTerms;
  bool? get hasAcceptedTerms => _hasAcceptedTerms;
  set hasAcceptedTerms(bool? hasAcceptedTerms) {
    _hasAcceptedTerms = hasAcceptedTerms;
    notifyListeners();
  }

  bool? _isEmployer;
  bool? get isEmployer => _isEmployer;
  set isEmployer(bool? isEmployer) {
    _isEmployer = isEmployer;
    notifyListeners();
  }

  bool? _isJobseeker;
  bool? get isJobseeker => _isJobseeker;
  set isJobseeker(bool? isJobseeker) {
    _isJobseeker = isJobseeker;
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

  String? _primaryLanguage;
  String? get primaryLanguage => _primaryLanguage;
  set primaryLanguage(String? primaryLanguage) {
    _primaryLanguage = primaryLanguage;
    notifyListeners();
  }

  bool jobMenuPressed = false;

  void toggleJobMenuPressed() {
    if (jobMenuPressed) {
      jobMenuPressed = false;
    } else {
      jobMenuPressed = true;
    }
    debugPrint(jobMenuPressed.toString());
    notifyListeners();
  }
}
