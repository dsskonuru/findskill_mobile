// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    status: json['status'] as String?,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$_$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
    };
