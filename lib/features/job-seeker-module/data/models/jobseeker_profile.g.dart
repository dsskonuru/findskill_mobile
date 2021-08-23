// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    uid: json['uid'] as String,
    phoneNumber: json['phone_number'] as String,
    userName: json['user_name'] as String,
    email: json['email'] as String?,
    profilePic: json['profile_pic'] as String?,
    gender: json['gender'] as String,
    placeName: json['place_name'] as String,
    district: json['district'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    location: json['location'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'phone_number': instance.phoneNumber,
      'user_name': instance.userName,
      'email': instance.email,
      'profile_pic': instance.profilePic,
      'gender': instance.gender,
      'place_name': instance.placeName,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
    };

_$_JobseekerProfile _$_$_JobseekerProfileFromJson(Map<String, dynamic> json) {
  return _$_JobseekerProfile(
    video: json['video'] as String,
    thumbnail: json['thumbnail'] as String,
    maximumRate: json['maximum_rate'] as String,
    minimumRate: json['minimum_rate'] as String,
    contractType: json['contract_type'] as String,
    jobType: json['job_type'] as String,
    skill: Skills.fromJson(json['skill'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_JobseekerProfileToJson(
        _$_JobseekerProfile instance) =>
    <String, dynamic>{
      'video': instance.video,
      'thumbnail': instance.thumbnail,
      'maximum_rate': instance.maximumRate,
      'minimum_rate': instance.minimumRate,
      'contract_type': instance.contractType,
      'job_type': instance.jobType,
      'skill': instance.skill.toJson(),
    };

_$_UserLanguages _$_$_UserLanguagesFromJson(Map<String, dynamic> json) {
  return _$_UserLanguages(
    userLanguages: (json['userLanguages'] as List<dynamic>)
        .map((e) => UserLanguage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_UserLanguagesToJson(_$_UserLanguages instance) =>
    <String, dynamic>{
      'userLanguages': instance.userLanguages.map((e) => e.toJson()).toList(),
    };

_$_UserLanguage _$_$_UserLanguageFromJson(Map<String, dynamic> json) {
  return _$_UserLanguage(
    language: json['language'] as String,
    proficiency:
        (json['proficiency'] as List<dynamic>).map((e) => e as String).toList(),
    isPrimaryLanguage: json['is_primary_language'] as String,
  );
}

Map<String, dynamic> _$_$_UserLanguageToJson(_$_UserLanguage instance) =>
    <String, dynamic>{
      'language': instance.language,
      'proficiency': instance.proficiency,
      'is_primary_language': instance.isPrimaryLanguage,
    };

_$_JobseekerProfileResponse _$_$_JobseekerProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _$_JobseekerProfileResponse(
    jobseeker: User.fromJson(json['jobseeker'] as Map<String, dynamic>),
    jobseekerProfile: JobseekerProfile.fromJson(
        json['jobseeker_profile'] as Map<String, dynamic>),
    userLanguages:
        UserLanguages.fromJson(json['user_language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_JobseekerProfileResponseToJson(
        _$_JobseekerProfileResponse instance) =>
    <String, dynamic>{
      'jobseeker': instance.jobseeker.toJson(),
      'jobseeker_profile': instance.jobseekerProfile.toJson(),
      'user_language': instance.userLanguages.toJson(),
    };
