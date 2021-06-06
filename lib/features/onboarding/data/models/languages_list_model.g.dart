// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguagesListModel _$LanguagesListModelFromJson(Map<String, dynamic> json) {
  return LanguagesListModel(
    language: (json['language'] as List<dynamic>)
        .map((e) => LanguageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LanguagesListModelToJson(LanguagesListModel instance) =>
    <String, dynamic>{
      'language': instance.language.map((e) => e.toJson()).toList(),
    };
