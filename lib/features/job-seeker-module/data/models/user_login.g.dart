// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLogin _$_$_UserLoginFromJson(Map<String, dynamic> json) {
  return _$_UserLogin(
    uid: json['uid'] as String,
    phoneNumber: json['phone_number'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_UserLoginToJson(_$_UserLogin instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
    };
