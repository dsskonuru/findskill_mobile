import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/services/auth_services.dart';
import '../../../../main.dart';
import '../../../job-seeker-module/data/repositories/location_service_repository.dart';
import '../../../onboarding/presentation/provider/language_provider.dart';
import '../../data/models/otp_verification.dart';
import '../../data/models/registration.dart';
import '../../data/models/user_location.dart';

final registrationProvider = ChangeNotifierProvider<RegistrationNotifier>(
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

  String? get intlPhoneNumber => userLocation!.countryCode + phoneNumber!;

  String? _password;
  String? get password => _password;
  set password(String? password) {
    _password = password;
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

  Future<void> getUserLocation() async {
    final Either<Failure, UserLocation> locationRunner =
        await container.read(locationProvider).getUserLocation();
    locationRunner.fold(
      (failure) => Logger.root.severe("Unable to fetch location"),
      (location) => userLocation = location,
    );
    return Future.value(null);
  }

  Future<AuthResponse?> registerUser() async {
    try {
      final Registration user = Registration(
        userName: userName!,
        phoneNumber: phoneNumber!,
        password: password!,
        placeName: userLocation!.placeName,
        district: userLocation!.district,
        state: userLocation!.state,
        country: userLocation!.country,
        latitude: num.parse(userLocation!.latitude.toStringAsFixed(2)),
        longitude: num.parse(userLocation!.longitude.toStringAsFixed(2)),
        hasAcceptedTerms: hasAcceptedTerms!,
        isEmployer: isEmployer!,
        primaryLanguage: LanguageCode(
            lanuageCode: container.read(languageProvider).language.code),
      );
      Logger.root.fine(user.toJson());
      final AuthResponse response =
          await container.read(authClientProvider).register(user);
      Logger.root.fine(response);
      return response;
    } catch (exception, stack) {
      Logger.root.severe(exception);
      container.read(crashlyticsProvider).recordError(exception, stack);
      return null;
    }
  }
}
