import 'package:dartz/dartz.dart';
import 'package:findskill/core/error/failures.dart';
import 'package:findskill/features/job-seeker-module/data/models/user_location.dart';
import 'package:findskill/features/job-seeker-module/data/repositories/location_service_repository.dart';
import 'package:findskill/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final registrationProvider =
    ChangeNotifierProvider.autoDispose<RegistrationNotifier>(
        (ref) => RegistrationNotifier());

class RegistrationNotifier extends ChangeNotifier {
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? number) {
    _phoneNumber = number; // TODO: number should include +countryCode
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

  Future<void> getUserLocation() async {
    final Either<Failure, UserLocation> locationRunner =
        await container.read(locationProvider).getUserLocation();
    locationRunner.fold(
      (failure) => Logger.root.severe("Unable to fetch location"),
      (location) => userLocation = location,
    );
    return Future.value(null);
  }

  String? _videoLink;
  String? get videoLink => _videoLink;
  set videoLink(String? videoLink) {
    _videoLink = videoLink;
    notifyListeners();
  }

  String? _thumbnail;
  String? get thumbnail => _thumbnail;
  set thumbnail(String? thumbnail) {
    _thumbnail = thumbnail;
    notifyListeners();
  }

  Set<String>? _selectedSkills;
  Set<String>? get selectedSkills => _selectedSkills;
  set selectedSkills(Set<String>? selectedSkills) {
    _selectedSkills = selectedSkills;
    notifyListeners();
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
