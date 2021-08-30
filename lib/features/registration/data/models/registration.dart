// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration.freezed.dart';
part 'registration.g.dart';

@freezed
class Registration with _$Registration {
  @JsonSerializable(explicitToJson: true)
  factory Registration({
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String password,
    @JsonKey(name: "place_name") required String placeName,
    required String district,
    required String state,
    required String country,
    required num latitude,
    required num longitude,
    @JsonKey(name: "terms_accept") required bool hasAcceptedTerms,
    @JsonKey(name: "is_employer") required bool isEmployer,
    @JsonKey(name: "is_jobseeker") required bool isJobseeker,
    @JsonKey(name: "user_language") required LanguageCode primaryLanguage,
  }) = _Registration;
  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);
}

@freezed
class LanguageCode with _$LanguageCode {
  @JsonSerializable(explicitToJson: true)
  factory LanguageCode({
    @JsonKey(name: "language") required String lanuageCode,
  }) = _LanguageCode;
  factory LanguageCode.fromJson(Map<String, dynamic> json) =>
      _$LanguageCodeFromJson(json);
}

@freezed
class UserLocation with _$UserLocation {
  @JsonSerializable(explicitToJson: true)
  factory UserLocation({
    @JsonKey(name: "place_name") required String placeName,
    required String district,
    required String state,
    required String country,
    required double latitude,
    required double longitude,
    required String countryCode,
  }) = _UserLocation;
  factory UserLocation.fromJson(Map<String, dynamic> json) =>
      _$UserLocationFromJson(json);
}

@freezed
class OtpVerification with _$OtpVerification {
  @JsonSerializable(explicitToJson: true)
  factory OtpVerification({
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "is_verified") required bool isVerified,
  }) = _OtpVerification;
  factory OtpVerification.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  @JsonSerializable(explicitToJson: true)
  factory AuthResponse({
    bool? status,
    required String detail,
  }) = _AuthResponse;
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class FirebaseUser with _$FirebaseUser {
  @JsonSerializable(explicitToJson: true)
  factory FirebaseUser({
    required String phoneNumber,
    required String uid,
  }) = _FirebaseUser;
  factory FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserFromJson(json);
}
