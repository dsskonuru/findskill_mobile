// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLogin _$_$_UserLoginFromJson(Map<String, dynamic> json) {
  return _$_UserLogin(
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_UserLoginToJson(_$_UserLogin instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'password': instance.password,
    };

_$_LoginResponse _$_$_LoginResponseFromJson(Map<String, dynamic> json) {
  return _$_LoginResponse(
    token: json['token'] as String,
    phoneNumber: json['phone_number'] as String,
    userId: json['user_id'] as String,
    isLoggedIn: json['is_logged_in'] as bool,
    firstName: json['user_name'] as String,
    placeName: json['place_name'] as String,
    gender: json['gender'] as String,
  );
}

Map<String, dynamic> _$_$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'phone_number': instance.phoneNumber,
      'user_id': instance.userId,
      'is_logged_in': instance.isLoggedIn,
      'user_name': instance.firstName,
      'place_name': instance.placeName,
      'gender': instance.gender,
    };
