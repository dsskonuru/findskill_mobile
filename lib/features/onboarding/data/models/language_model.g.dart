// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) {
  return LanguageModel(
    code: json['code'] as String,
    name: json['name'] as String,
    localName: json['localName'] as String,
  );
}

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'localName': instance.localName,
    };
