// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_location.freezed.dart';
part 'user_location.g.dart';

@freezed
class UserLocation with _$UserLocation {
  @JsonSerializable(explicitToJson: true)
  factory UserLocation({
    @JsonKey(name: "place_name") required String placeName,
    required String district,
    required String state,
    required String country,
    required double latitude,
    required double longitude,
    required String countryCode,
  }) = _UserLocation;
  factory UserLocation.fromJson(Map<String, dynamic> json) => _$UserLocationFromJson(json);
}