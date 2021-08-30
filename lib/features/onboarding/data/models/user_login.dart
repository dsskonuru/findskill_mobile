// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
class UserLogin with _$UserLogin {
  @JsonSerializable(explicitToJson: true)
  factory UserLogin({
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String password,
  }) = _UserLogin;
  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);
}

// TODO: Check !!!

@freezed
class LoginResponse with _$LoginResponse {
  @JsonSerializable(explicitToJson: true)
  factory LoginResponse({
    required String token,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "is_logged_in") required bool isLoggedIn,
    @JsonKey(name: "user_name") required String firstName,
    @JsonKey(name: "place_name") required String placeName,
    required String gender,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
