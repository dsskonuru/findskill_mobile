// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Skills _$_$_SkillsFromJson(Map<String, dynamic> json) {
  return _$_Skills(
    skills: (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_SkillsToJson(_$_Skills instance) => <String, dynamic>{
      'skills': instance.skills,
    };

_$_SkillsResponse _$_$_SkillsResponseFromJson(Map<String, dynamic> json) {
  return _$_SkillsResponse(
    status: json['status'] as bool,
    responseData: json['response_data'] as String,
  );
}

Map<String, dynamic> _$_$_SkillsResponseToJson(_$_SkillsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response_data': instance.responseData,
    };
