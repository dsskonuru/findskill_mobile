// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  factory User({
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String password,
    required String userItems,
    @JsonKey(name: "placeName") required String placeName,
    required String district,
    required String country,
    required String latitude,
    required String longitude,
    required Profile profile,
    required UserLanguage language,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Profile with _$Profile {
  @JsonSerializable(explicitToJson: true)
  factory Profile({
    required String video,
    required List<String> skill,
  }) = _Profile;
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class UserLanguage with _$UserLanguage {
  @JsonSerializable(explicitToJson: true)
  factory UserLanguage({
    required String user,
    required String language,
    required String proficiency,
    @JsonKey(name: "is_primary_language")
    required String isPrimaryLanguage,
    
  }) = _UserLanguage;
  factory UserLanguage.fromJson(Map<String, dynamic> json) =>
      _$UserLanguageFromJson(json);
}
