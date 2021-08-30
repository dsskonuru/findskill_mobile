import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/providers/language_provider.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/services/auth_services.dart';
import '../../../../main.dart';
import '../../data/models/registration.dart';
import '../../data/repositories/location_service_repository.dart';
import '../../video/provider/video_service_provider.dart';
import 'otp_verification_provider.dart';

final registrationProvider = ChangeNotifierProvider<RegistrationNotifier>(
    (ref) => RegistrationNotifier());

class RegistrationNotifier extends ChangeNotifier {
  String? _firstName;
  String? get firstName => _firstName;
  set firstName(String? firstName) {
    _firstName = firstName;
    notifyListeners();
  }

  String? _lastName;
  String? get lastName => _lastName;
  set lastName(String? lastName) {
    _lastName = lastName;
    notifyListeners();
  }

  String? _phoneNumber;
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? number) {
    _phoneNumber = number;
    container.read(userActionsProvider).phoneNumber = number;
    notifyListeners();
  }

  String? get intlPhoneNumber => userLocation!.countryCode + phoneNumber!;

  String? _password;
  String? get password => _password;
  set password(String? password) {
    _password = password;
    container.read(userActionsProvider).password = password;
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

  bool? _isEmployer = false;
  bool? get isEmployer => _isEmployer;
  set isEmployer(bool? isEmployer) {
    _isEmployer = isEmployer;
    notifyListeners();
  }

  Future<void> getUserLocation() async {
    final Either<Failure, UserLocation> locationRunner =
        await container.read(locationProvider).getUserLocation();
    locationRunner.fold(
      (failure) => Logger.root.severe("Unable to fetch location"),
      (location) {
        userLocation = location;
        container.read(userActionsProvider).userLocation = location;
      },
    );
    return Future.value(null);
  }

  Future<bool> registerUser() async {
    try {
      bool success = false;
      final Registration user = Registration(
        firstName: firstName!,
        lastName: lastName!,
        phoneNumber: intlPhoneNumber!,
        password: password!,
        placeName: userLocation!.placeName,
        district: userLocation!.district,
        state: userLocation!.state,
        country: userLocation!.country,
        latitude: num.parse(userLocation!.latitude.toStringAsFixed(2)),
        longitude: num.parse(userLocation!.longitude.toStringAsFixed(2)),
        hasAcceptedTerms: hasAcceptedTerms!,
        isEmployer: isEmployer!,
        isJobseeker: !isEmployer!,
        primaryLanguage: LanguageCode(
          lanuageCode: container.read(languageProvider).language.code,
        ),
      );
      Logger.root.fine(user);

      final AuthResponse response =
          await container.read(authClientProvider).register(user);
      Logger.root.fine(response);
      if (response.status!) {
        await container.read(otpVerificationProvider).otpVerified();
        success = await container.read(userActionsProvider).login();
        if (!isEmployer!) {
          final bool hasVideoUploaded =
              await container.read(videoServiceProvider).uploadVideoFile();
          Logger.root.fine("Video Upload was $hasVideoUploaded");
        }
      }
      return success;
    } catch (exception, stack) {
      Logger.root.severe(exception);
      container.read(crashlyticsProvider).recordError(exception, stack);
      return false;
    }
  }
}
