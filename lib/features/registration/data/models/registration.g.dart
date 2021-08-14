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
    latitude: json['latitude'] as num,
    longitude: json['longitude'] as num,
    hasAcceptedTerms: json['terms_accept'] as bool,
    isEmployer: json['is_employer'] as bool,
    primaryLanguage:
        LanguageCode.fromJson(json['user_language'] as Map<String, dynamic>),
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
      'terms_accept': instance.hasAcceptedTerms,
      'is_employer': instance.isEmployer,
      'user_language': instance.primaryLanguage.toJson(),
    };

_$_LanguageCode _$_$_LanguageCodeFromJson(Map<String, dynamic> json) {
  return _$_LanguageCode(
    lanuageCode: json['language'] as String,
  );
}

Map<String, dynamic> _$_$_LanguageCodeToJson(_$_LanguageCode instance) =>
    <String, dynamic>{
      'language': instance.lanuageCode,
    };
