// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLocation _$_$_UserLocationFromJson(Map<String, dynamic> json) {
  return _$_UserLocation(
    placeName: json['place_name'] as String,
    district: json['district'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    countryCode: json['countryCode'] as String,
  );
}

Map<String, dynamic> _$_$_UserLocationToJson(_$_UserLocation instance) =>
    <String, dynamic>{
      'place_name': instance.placeName,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'countryCode': instance.countryCode,
    };
