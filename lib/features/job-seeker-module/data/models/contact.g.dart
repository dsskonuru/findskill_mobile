// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$_$_ContactFromJson(Map<String, dynamic> json) {
  return _$_Contact(
    name: json['name'] as String,
    address: json['address'] as String,
    phoneNumber: json['phoneNumber'] as String,
    profession: json['profession'] as String,
  );
}

Map<String, dynamic> _$_$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'profession': instance.profession,
    };
