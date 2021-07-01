import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class LanguagesList with _$LanguagesList {
  @JsonSerializable(explicitToJson: true)
  factory LanguagesList({
    @JsonKey(name: "language") // ! change to languages at backend
    required List<Language> list,
  }) = _LanguagesList;
  factory LanguagesList.fromJson(Map<String, dynamic> json) =>
      _$LanguagesListFromJson(json);
}

@freezed
class Language with _$Language {
  @JsonSerializable(explicitToJson: true)
  factory Language({
    required String code,
    required String name,
    @JsonKey(name: "local_name") required String localName,
  }) = _Language;
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}
