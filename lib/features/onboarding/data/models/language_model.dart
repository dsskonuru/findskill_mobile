import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/language.dart';

part 'language_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LanguageModel extends Language {
  const LanguageModel({
    required String code,
    required String name,
    // ignore: non_constant_identifier_names
    required String local_name,
  }) : super(
          code: code,
          name: name,
          local_name: local_name,
        );

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}
