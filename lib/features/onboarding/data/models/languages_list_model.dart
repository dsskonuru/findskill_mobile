import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/languages_list.dart';
import 'language_model.dart';

part 'languages_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LanguagesListModel extends LanguagesList {
  const LanguagesListModel({
    required List<LanguageModel> language, // TODO: make language plural 
  }) : super(
          language: language,
        );

  factory LanguagesListModel.fromJson(Map<String, dynamic> json) =>
      _$LanguagesListModelFromJson(json);

  Map<String, dynamic> toJson() => _$LanguagesListModelToJson(this);
}
