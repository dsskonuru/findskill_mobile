// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_user.freezed.dart';
part 'firebase_user.g.dart';

@freezed
class FirebaseUser with _$FirebaseUser {
  @JsonSerializable(explicitToJson: true)
  factory FirebaseUser({
    required String phoneNumber,
    required String uid,
  }) = _FirebaseUser;
  factory FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserFromJson(json);
}