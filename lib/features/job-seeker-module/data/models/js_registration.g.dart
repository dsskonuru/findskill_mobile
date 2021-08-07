// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'js_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Registration _$_$_RegistrationFromJson(Map<String, dynamic> json) {
  return _$_Registration(
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
    placeName: json['place_name'] as String,
    district: json['district'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    video: json['jobseeker_profile.video'] as String,
    thumbnail: json['jobseeker_profile.thumbnail'] as String,
    skillId: json['jobseeker_profile.skill'] as String,
    primaryLanguage: json['user_language.language'] as String,
  );
}

Map<String, dynamic> _$_$_RegistrationToJson(_$_Registration instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'place_name': instance.placeName,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'jobseeker_profile.video': instance.video,
      'jobseeker_profile.thumbnail': instance.thumbnail,
      'jobseeker_profile.skill': instance.skillId,
      'user_language.language': instance.primaryLanguage,
    };
