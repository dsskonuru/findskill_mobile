// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Registration _$_$_RegistrationFromJson(Map<String, dynamic> json) {
  return _$_Registration(
    userName: json['user_name'] as String,
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
    placeName: json['place_name'] as String,
    district: json['district'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    hasAccepetedTerms: json['terms_accept'] as bool,
    isEmployer: json['is_employer'] as bool,
    primaryLanguage: json['user_language.language'] as String,
  );
}

Map<String, dynamic> _$_$_RegistrationToJson(_$_Registration instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'place_name': instance.placeName,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'terms_accept': instance.hasAccepetedTerms,
      'is_employer': instance.isEmployer,
      'user_language.language': instance.primaryLanguage,
    };
