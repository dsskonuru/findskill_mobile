import 'package:find_skill/features/onboarding/domain/entities/language.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LanguageModel extends Language {
  const LanguageModel({
    required String code,
    required String name,
    required String localName,
  }) : super(
          code: code,
          name: name,
          localName: localName,
        );

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}

