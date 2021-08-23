// ignore_for_file: file_names, invalid_annotation_target

import 'package:findskill/features/job-seeker-module/data/models/skill_update.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobseeker_profile.freezed.dart';
part 'jobseeker_profile.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  factory User({
    required String uid,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "user_name") required String userName,
    required String? email,
    @JsonKey(name: "profile_pic") required String? profilePic,
    required String gender,
    @JsonKey(name: "place_name") required String placeName,
    required String district,
    required String state,
    required String country,
    required String latitude,
    required String longitude,
    required String location,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class JobseekerProfile with _$JobseekerProfile {
  @JsonSerializable(explicitToJson: true)
  factory JobseekerProfile({
    required String video,
    required String thumbnail,
    @JsonKey(name: "maximum_rate") required String maximumRate,
    @JsonKey(name: "minimum_rate") required String minimumRate,
    @JsonKey(name: "contract_type") required String contractType,
    @JsonKey(name: "job_type") required String jobType,
    required Skills skill,
  }) = _JobseekerProfile;
  factory JobseekerProfile.fromJson(Map<String, dynamic> json) =>
      _$JobseekerProfileFromJson(json);
}

@freezed
class UserLanguages with _$UserLanguages {
  @JsonSerializable(explicitToJson: true)
  factory UserLanguages({
    required List<UserLanguage> userLanguages,
  }) = _UserLanguages;
  factory UserLanguages.fromJson(Map<String, dynamic> json) =>
      _$UserLanguagesFromJson(json);
}

@freezed
class UserLanguage with _$UserLanguage {
  @JsonSerializable(explicitToJson: true)
  factory UserLanguage({
    required String language,
    required List<String> proficiency,
    @JsonKey(name: "is_primary_language") required String isPrimaryLanguage,
  }) = _UserLanguage;
  factory UserLanguage.fromJson(Map<String, dynamic> json) =>
      _$UserLanguageFromJson(json);
}

@freezed
class JobseekerProfileResponse with _$JobseekerProfileResponse {
  @JsonSerializable(explicitToJson: true)
  factory JobseekerProfileResponse({
    required User jobseeker,
    @JsonKey(name: "jobseeker_profile")
        required JobseekerProfile jobseekerProfile,
    @JsonKey(name: "user_language") required UserLanguages userLanguages,
  }) = _JobseekerProfileResponse;
  factory JobseekerProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$JobseekerProfileResponseFromJson(json);
}
