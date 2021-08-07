// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'skill_category.dart';

part 'skill.freezed.dart';
part 'skill.g.dart';

@freezed
class Skill with _$Skill {
  @JsonSerializable(explicitToJson: true)
  factory Skill({
    @JsonKey(name: "uid") required String skillId,
    @JsonKey(name: "language_code") required String languageCode,
    required SkillCategory category,
    @JsonKey(name: "skill_name") required String name,
  }) = _Skill;
  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
class SkillsList with _$SkillsList {
  @JsonSerializable(explicitToJson: true)
  factory SkillsList({
    required List<Skill> list,
  }) = _SkillsList;
  factory SkillsList.fromJson(Map<String, dynamic> json) =>
      _$SkillsListFromJson(json);
}
