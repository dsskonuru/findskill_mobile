// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobseeker_module.freezed.dart';
part 'jobseeker_module.g.dart';

@freezed
class VideoResponse with _$VideoResponse {
  @JsonSerializable(explicitToJson: true)
  factory VideoResponse({
    required bool status,
    required String user,
    required String video,
  }) = _VideoResponse;
  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}

@freezed
class SkillCategory with _$SkillCategory {
  @JsonSerializable(explicitToJson: true)
  factory SkillCategory({
    @JsonKey(name: "uid") required String id,
    @JsonKey(name: "language_code") required String languageCode,
    @JsonKey(name: "category_name") required String categoryName,
  }) = _SkillCategory;
  factory SkillCategory.fromJson(Map<String, dynamic> json) =>
      _$SkillCategoryFromJson(json);
}

@freezed
class Skill with _$Skill {
  @JsonSerializable(explicitToJson: true)
  factory Skill({
    @JsonKey(name: "uid") required String skillId,
    @JsonKey(name: "language_code") required String languageCode,
    required SkillCategory category,
    @JsonKey(name: "skill_name") required String name,
  }) = _Skill;
  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
class SkillsUpdate with _$SkillsUpdate {
  @JsonSerializable(explicitToJson: true)
  factory SkillsUpdate({
    required List<String> skill,
  }) = _SkillsUpdate;
  factory SkillsUpdate.fromJson(Map<String, dynamic> json) =>
      _$SkillsUpdateFromJson(json);
}

@freezed
class SkillsResponse with _$SkillsResponse {
  @JsonSerializable(explicitToJson: true)
  factory SkillsResponse({
    required bool status,
    @JsonKey(name: "response_data") required List<String> responseData,
  }) = _SkillsResponse;
  factory SkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillsResponseFromJson(json);
}

@freezed
class JobTypes with _$JobTypes {
  @JsonSerializable(explicitToJson: true)
  factory JobTypes({
    @JsonKey(name: "contract_type") required Map<String, String> contractType,
    @JsonKey(name: "job_type") required Map<String, String> jobType,
  }) = _JobTypes;
  factory JobTypes.fromJson(Map<String, dynamic> json) =>
      _$JobTypesFromJson(json);
}

@freezed
class Preferences with _$Preferences {
  @JsonSerializable(explicitToJson: true)
  factory Preferences({
    @JsonKey(name: "contract_type") required String contractType,
    @JsonKey(name: "job_type") required String jobType,
    @JsonKey(name: "minimum_rate") required String minimumRate,
    @JsonKey(name: "maximum_rate") required String maximumRate,
  }) = _Preferences;
  factory Preferences.fromJson(Map<String, dynamic> json) =>
      _$PreferencesFromJson(json);
}

@freezed
class PreferencesResponse with _$PreferencesResponse {
  @JsonSerializable(explicitToJson: true)
  factory PreferencesResponse({
    required bool status,
    @JsonKey(name: "response_data") required Preferences responseData,
  }) = _PreferencesResponse;
  factory PreferencesResponse.fromJson(Map<String, dynamic> json) =>
      _$PreferencesResponseFromJson(json);
}

@freezed
class IdResponseData with _$IdResponseData {
  @JsonSerializable(explicitToJson: true)
  factory IdResponseData({
    @JsonKey(name: "user_id_type") required String userIdType,
    @JsonKey(name: "front_view") required String frontView,
    @JsonKey(name: "back_view") required String backView,
  }) = _IdResponseData;
  factory IdResponseData.fromJson(Map<String, dynamic> json) =>
      _$IdResponseDataFromJson(json);
}

@freezed
class IdResponse with _$IdResponse {
  @JsonSerializable(explicitToJson: true)
  factory IdResponse({
    required bool status,
    @JsonKey(name: "response_data") required IdResponseData responseData,
  }) = _IdResponse;
  factory IdResponse.fromJson(Map<String, dynamic> json) =>
      _$IdResponseFromJson(json);
}

@freezed
class IdType with _$IdType {
  @JsonSerializable(explicitToJson: true)
  factory IdType({
    required String uid,
    @JsonKey(name: "id_type") required String name,
    required String country,
  }) = _IdType;
  factory IdType.fromJson(Map<String, dynamic> json) => _$IdTypeFromJson(json);
}
