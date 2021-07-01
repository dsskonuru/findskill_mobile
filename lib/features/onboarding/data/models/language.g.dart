// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguagesList _$_$_LanguagesListFromJson(Map<String, dynamic> json) {
  return _$_LanguagesList(
    list: (json['language'] as List<dynamic>)
        .map((e) => Language.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LanguagesListToJson(_$_LanguagesList instance) =>
    <String, dynamic>{
      'language': instance.list.map((e) => e.toJson()).toList(),
    };

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return _$_Language(
    code: json['code'] as String,
    name: json['name'] as String,
    localName: json['local_name'] as String,
  );
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'local_name': instance.localName,
    };
