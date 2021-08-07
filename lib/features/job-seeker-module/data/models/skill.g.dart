// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
