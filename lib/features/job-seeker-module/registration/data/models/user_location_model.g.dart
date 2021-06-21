// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocationModel _$UserLocationModelFromJson(Map<String, dynamic> json) {
  return UserLocationModel(
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    country: json['country'] as String,
    state: json['state'] as String,
    district: json['district'] as String,
    placeName: json['placeName'] as String,
  );
}

Map<String, dynamic> _$UserLocationModelToJson(UserLocationModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'state': instance.state,
      'district': instance.district,
      'placeName': instance.placeName,
    };
