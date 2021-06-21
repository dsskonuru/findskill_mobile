// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
    userItems: json['userItems'] as String,
    placeName: json['placeName'] as String,
    district: json['district'] as String,
    country: json['country'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
    language: UserLanguage.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'userItems': instance.userItems,
      'placeName': instance.placeName,
      'district': instance.district,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'profile': instance.profile.toJson(),
      'language': instance.language.toJson(),
    };

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    video: json['video'] as String,
    skill: (json['skill'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'video': instance.video,
      'skill': instance.skill,
    };

_$_UserLanguage _$_$_UserLanguageFromJson(Map<String, dynamic> json) {
  return _$_UserLanguage(
    user: json['user'] as String,
    language: json['language'] as String,
    proficiency: json['proficiency'] as String,
    isPrimaryLanguage: json['is_primary_language'] as String,
  );
}

Map<String, dynamic> _$_$_UserLanguageToJson(_$_UserLanguage instance) =>
    <String, dynamic>{
      'user': instance.user,
      'language': instance.language,
      'proficiency': instance.proficiency,
      'is_primary_language': instance.isPrimaryLanguage,
    };
