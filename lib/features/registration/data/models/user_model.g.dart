// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    uid: json['uid'] as String,
    mobileNumber: json['mobileNumber'] as int,
    password: json['password'] as String,
    name: json['name'] as String,
    selectedJobs: (json['selectedJobs'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'mobileNumber': instance.mobileNumber,
      'password': instance.password,
      'name': instance.name,
      'selectedJobs': instance.selectedJobs,
    };
