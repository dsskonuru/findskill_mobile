// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResponse _$_$_VideoResponseFromJson(Map<String, dynamic> json) {
  return _$_VideoResponse(
    status: json['status'] as bool,
    user: json['user'] as String,
    video: json['video'] as String,
  );
}

Map<String, dynamic> _$_$_VideoResponseToJson(_$_VideoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      'video': instance.video,
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

_$_SkillsUpdate _$_$_SkillsUpdateFromJson(Map<String, dynamic> json) {
  return _$_SkillsUpdate(
    skill: (json['skill'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_SkillsUpdateToJson(_$_SkillsUpdate instance) =>
    <String, dynamic>{
      'skill': instance.skill,
    };

_$_SkillsResponse _$_$_SkillsResponseFromJson(Map<String, dynamic> json) {
  return _$_SkillsResponse(
    status: json['status'] as bool,
    responseData: (json['response_data'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_SkillsResponseToJson(_$_SkillsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response_data': instance.responseData,
    };

_$_JobTypes _$_$_JobTypesFromJson(Map<String, dynamic> json) {
  return _$_JobTypes(
    contractType: Map<String, String>.from(json['contract_type'] as Map),
    jobType: Map<String, String>.from(json['job_type'] as Map),
  );
}

Map<String, dynamic> _$_$_JobTypesToJson(_$_JobTypes instance) =>
    <String, dynamic>{
      'contract_type': instance.contractType,
      'job_type': instance.jobType,
    };

_$_Preferences _$_$_PreferencesFromJson(Map<String, dynamic> json) {
  return _$_Preferences(
    contractType: json['contract_type'] as String,
    jobType: json['job_type'] as String,
    minimumRate: json['minimum_rate'] as String,
    maximumRate: json['maximum_rate'] as String,
  );
}

Map<String, dynamic> _$_$_PreferencesToJson(_$_Preferences instance) =>
    <String, dynamic>{
      'contract_type': instance.contractType,
      'job_type': instance.jobType,
      'minimum_rate': instance.minimumRate,
      'maximum_rate': instance.maximumRate,
    };

_$_PreferencesResponse _$_$_PreferencesResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PreferencesResponse(
    status: json['status'] as bool,
    responseData:
        Preferences.fromJson(json['response_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PreferencesResponseToJson(
        _$_PreferencesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response_data': instance.responseData.toJson(),
    };

_$_IdResponseData _$_$_IdResponseDataFromJson(Map<String, dynamic> json) {
  return _$_IdResponseData(
    userIdType: json['user_id_type'] as String,
    frontView: json['front_view'] as String,
    backView: json['back_view'] as String,
  );
}

Map<String, dynamic> _$_$_IdResponseDataToJson(_$_IdResponseData instance) =>
    <String, dynamic>{
      'user_id_type': instance.userIdType,
      'front_view': instance.frontView,
      'back_view': instance.backView,
    };

_$_IdResponse _$_$_IdResponseFromJson(Map<String, dynamic> json) {
  return _$_IdResponse(
    status: json['status'] as bool,
    responseData:
        IdResponseData.fromJson(json['response_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_IdResponseToJson(_$_IdResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response_data': instance.responseData.toJson(),
    };

_$_IdType _$_$_IdTypeFromJson(Map<String, dynamic> json) {
  return _$_IdType(
    uid: json['uid'] as String,
    name: json['id_type'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$_$_IdTypeToJson(_$_IdType instance) => <String, dynamic>{
      'uid': instance.uid,
      'id_type': instance.name,
      'country': instance.country,
    };
