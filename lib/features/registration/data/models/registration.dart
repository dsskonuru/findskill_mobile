// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration.freezed.dart';
part 'registration.g.dart';

@freezed
class Registration with _$Registration {
  @JsonSerializable(explicitToJson: true)
  factory Registration({
    @JsonKey(name: "user_name") required String userName,
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
  factory LanguageCode.fromJson(Map<String, dynamic> json) => _$LanguageCodeFromJson(json);
}