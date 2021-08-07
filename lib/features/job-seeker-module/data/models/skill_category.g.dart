// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillCategory _$_$_SkillCategoryFromJson(Map<String, dynamic> json) {
  return _$_SkillCategory(
    id: json['uid'] as String,
    languageCode: json['language_code'] as String,
    categoryName: json['category_name'] as String,
  );
}

Map<String, dynamic> _$_$_SkillCategoryToJson(_$_SkillCategory instance) =>
    <String, dynamic>{
      'uid': instance.id,
      'language_code': instance.languageCode,
      'category_name': instance.categoryName,
    };

_$_SkillCategoriesList _$_$_SkillCategoriesListFromJson(
    Map<String, dynamic> json) {
  return _$_SkillCategoriesList(
    list: (json['list'] as List<dynamic>)
        .map((e) => SkillCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SkillCategoriesListToJson(
        _$_SkillCategoriesList instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
