// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login.freezed.dart';
part 'user_login.g.dart';

@freezed
class UserLogin with _$UserLogin {
  @JsonSerializable(explicitToJson: true)
  factory UserLogin({
    required String uid,
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String password,
  }) = _UserLogin;
  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);
}
