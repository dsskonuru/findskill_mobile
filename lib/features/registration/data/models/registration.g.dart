// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Registration _$_$_RegistrationFromJson(Map<String, dynamic> json) {
  return _$_Registration(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
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
    isJobseeker: json['is_jobseeker'] as bool,
    primaryLanguage:
        LanguageCode.fromJson(json['user_language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RegistrationToJson(_$_Registration instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
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
      'is_jobseeker': instance.isJobseeker,
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

_$_UserLocation _$_$_UserLocationFromJson(Map<String, dynamic> json) {
  return _$_UserLocation(
    placeName: json['place_name'] as String,
    district: json['district'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    countryCode: json['countryCode'] as String,
  );
}

Map<String, dynamic> _$_$_UserLocationToJson(_$_UserLocation instance) =>
    <String, dynamic>{
      'place_name': instance.placeName,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'countryCode': instance.countryCode,
    };

_$_OtpVerification _$_$_OtpVerificationFromJson(Map<String, dynamic> json) {
  return _$_OtpVerification(
    phoneNumber: json['phone_number'] as String,
    isVerified: json['is_verified'] as bool,
  );
}

Map<String, dynamic> _$_$_OtpVerificationToJson(_$_OtpVerification instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'is_verified': instance.isVerified,
    };

_$_AuthResponse _$_$_AuthResponseFromJson(Map<String, dynamic> json) {
  return _$_AuthResponse(
    status: json['status'] as bool?,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$_$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
    };

_$_FirebaseUser _$_$_FirebaseUserFromJson(Map<String, dynamic> json) {
  return _$_FirebaseUser(
    phoneNumber: json['phoneNumber'] as String,
    uid: json['uid'] as String,
  );
}

Map<String, dynamic> _$_$_FirebaseUserToJson(_$_FirebaseUser instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'uid': instance.uid,
    };
