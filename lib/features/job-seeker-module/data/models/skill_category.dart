// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_category.freezed.dart';
part 'skill_category.g.dart';

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
class SkillCategoriesList with _$SkillCategoriesList {
  @JsonSerializable(explicitToJson: true)
  factory SkillCategoriesList({
    required List<SkillCategory> list,
  }) = _SkillCategoriesList;
  factory SkillCategoriesList.fromJson(Map<String, dynamic> json) =>
      _$SkillCategoriesListFromJson(json);
}
