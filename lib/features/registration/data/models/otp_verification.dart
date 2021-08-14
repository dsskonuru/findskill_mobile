// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification.freezed.dart';
part 'otp_verification.g.dart';

@freezed
class OtpVerification with _$OtpVerification {
  @JsonSerializable(explicitToJson: true)
  factory OtpVerification({
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "is_verified") required bool isVerified,
  }) = _OtpVerification;
  factory OtpVerification.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  @JsonSerializable(explicitToJson: true)
  factory AuthResponse({
    bool? status,
    required String detail,
  }) = _AuthResponse;
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
