import 'package:dartz/dartz.dart';
import 'package:findskill/core/error/failures.dart';
import 'package:findskill/features/onboarding/presentation/provider/language_provider.dart';
import 'package:findskill/features/registration/data/models/skills.dart';
import 'package:findskill/features/registration/data/repositories/skill_category_repository.dart';
import 'package:findskill/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/skill_repository.dart';

final skillsChoiceProvider =
    ChangeNotifierProvider<SkillsNotifier>((ref) => SkillsNotifier());

class SkillsNotifier extends ChangeNotifier {
  List<SkillCategoryResponse>? _skillCategoriesList;
  List<SkillCategoryResponse>? get skillCategoriesList => _skillCategoriesList;
  set skillCategoriesList(List<SkillCategoryResponse>? skillCategoriesList) {
    _skillCategoriesList = skillCategoriesList;
    notifyListeners();
  }

  List<Skill>? _selectedSkills;
  List<Skill>? get selectedSkills => _selectedSkills;
  set selectedSkills(List<Skill>? selectedSkills) {
    _selectedSkills = selectedSkills;
    notifyListeners();
  }

  Map<String, List<Skill>> _skillsMap = {};
  Map<String, List<Skill>> get skillsMap => _skillsMap;
  set skillsMap(Map<String, List<Skill>> skillsMap) {
    _skillsMap = skillsMap;
    notifyListeners();
  }

  Future<void> fetchSkillsMap() async {
    final Either<Failure, List<SkillCategoryResponse>> skillCategoriesRunner =
        await container
            .read(skillCategoryProvider)
            .getSkillCategories(container.read(languageProvider).language.code);
    final List<SkillCategoryResponse> skillCategories =
        skillCategoriesRunner.getOrElse(() => []);
    skillCategoriesList = skillCategories;
    for (final skillCategory in skillCategories) {
      final Either<Failure, List<Skill>> skillsRunner = await container
          .read(skillsProvider)
          .getSkills(
              container.read(languageProvider).language.code, skillCategory.id);
      final List<Skill> skills = skillsRunner.getOrElse(() => []);
      skillsMap[skillCategory.id] = skills;
    }
    return;
  }

  Future<void> submit() async {
    // TODO: Call the submit API
    // container.read(jobseekerClientProvider).updateSkills(token, skills);
  }
}
