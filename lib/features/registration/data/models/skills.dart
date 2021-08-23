// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'skills.freezed.dart';
part 'skills.g.dart';

@freezed
class SkillCategoryResponse with _$SkillCategoryResponse {
  @JsonSerializable(explicitToJson: true)
  factory SkillCategoryResponse({
    @JsonKey(name: "uid") required String id,
    @JsonKey(name: "language_code") required String languageCode,
  }) = _SkillCategoryResponse;
  factory SkillCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillCategoryResponseFromJson(json);
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
class SkillCategoriesResponseList with _$SkillCategoriesResponseList {
  @JsonSerializable(explicitToJson: true)
  factory SkillCategoriesResponseList({
    required List<SkillCategoryResponse> list,
  }) = _SkillCategoriesResponseList;
  factory SkillCategoriesResponseList.fromJson(Map<String, dynamic> json) =>
      _$SkillCategoriesResponseListFromJson(json);
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
class SkillsList with _$SkillsList {
  @JsonSerializable(explicitToJson: true)
  factory SkillsList({
    required List<Skill> list,
  }) = _SkillsList;
  factory SkillsList.fromJson(Map<String, dynamic> json) =>
      _$SkillsListFromJson(json);
}
