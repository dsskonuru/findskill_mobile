// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_update.freezed.dart';
part 'skill_update.g.dart';

@freezed
class Skills with _$Skills {
  @JsonSerializable(explicitToJson: true)
  factory Skills({
    required List<String> skills,
  }) = _Skills;
  factory Skills.fromJson(Map<String, dynamic> json) =>
      _$SkillsFromJson(json);
}

@freezed
class SkillsResponse with _$SkillsResponse {
  @JsonSerializable(explicitToJson: true)
  factory SkillsResponse({
    required bool status,
    @JsonKey(name: "response_data") required String responseData,
  }) = _SkillsResponse;
  factory SkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillsResponseFromJson(json);
}
