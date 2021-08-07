// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'js_registration.freezed.dart';
part 'js_registration.g.dart';

@freezed
class Registration with _$Registration {
  @JsonSerializable(explicitToJson: true)
  factory Registration({
    // -- LoginInfo
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String password,
    // -- UserLocation
    @JsonKey(name: "place_name") required String placeName,
    required String district,
    required String state,
    required String country,
    required String latitude,
    required String longitude,
    // -- Others
    @JsonKey(name: "jobseeker_profile.video") required String video,
    @JsonKey(name: "jobseeker_profile.thumbnail") required String thumbnail,
    @JsonKey(name: "jobseeker_profile.skill") required String skillId,
    @JsonKey(name: "user_language.language") required String primaryLanguage,
  }) = _Registration;
  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);
}

// TODO: convert to .mp4 and .jpeg for video and thumbnail or get links
// TODO: add multiple skills
