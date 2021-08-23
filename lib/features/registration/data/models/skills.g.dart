// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillCategoryResponse _$_$_SkillCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_SkillCategoryResponse(
    id: json['uid'] as String,
    languageCode: json['language_code'] as String,
  );
}

Map<String, dynamic> _$_$_SkillCategoryResponseToJson(
        _$_SkillCategoryResponse instance) =>
    <String, dynamic>{
      'uid': instance.id,
      'language_code': instance.languageCode,
    };

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

_$_SkillCategoriesResponseList _$_$_SkillCategoriesResponseListFromJson(
    Map<String, dynamic> json) {
  return _$_SkillCategoriesResponseList(
    list: (json['list'] as List<dynamic>)
        .map((e) => SkillCategoryResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SkillCategoriesResponseListToJson(
        _$_SkillCategoriesResponseList instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_$_Skill _$_$_SkillFromJson(Map<String, dynamic> json) {
  return _$_Skill(
    skillId: json['uid'] as String,
    languageCode: json['language_code'] as String,
    category: SkillCategory.fromJson(json['category'] as Map<String, dynamic>),
    name: json['skill_name'] as String,
  );
}

Map<String, dynamic> _$_$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'uid': instance.skillId,
      'language_code': instance.languageCode,
      'category': instance.category.toJson(),
      'skill_name': instance.name,
    };

_$_SkillsList _$_$_SkillsListFromJson(Map<String, dynamic> json) {
  return _$_SkillsList(
    list: (json['list'] as List<dynamic>)
        .map((e) => Skill.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SkillsListToJson(_$_SkillsList instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
