import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/providers/language_provider.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/services/job_seeker_services.dart';
import '../../../../main.dart';
import '../../../job-seeker-module/data/models/jobseeker_module.dart';

final skillsChoiceProvider =
    ChangeNotifierProvider<SkillsNotifier>((ref) => SkillsNotifier());

class SkillsNotifier extends ChangeNotifier {
  List<String>? _selectedSkills;
  List<String>? get selectedSkills => _selectedSkills;
  set selectedSkills(List<String>? selectedSkills) {
    _selectedSkills = selectedSkills;
    notifyListeners();
  }

  Map<String, List<Skill>> _skillsMap = {};
  Map<String, List<Skill>> get skillsMap => _skillsMap;
  set skillsMap(Map<String, List<Skill>> skillsMap) {
    _skillsMap = skillsMap;
    notifyListeners();
  }

  // TODO: Handle unused skill repositories
  Future<void> fetchSkillsMap() async {
    final String languageCode = container.read(languageProvider).language.code;
    final List<SkillCategory> skillCategories = await container
        .read(jobseekerClientProvider)
        .skillCategories(languageCode);
    Logger.root.fine('''
        Language : ${container.read(languageProvider).language.code}  
        Skill Sub Categories from API : ${skillCategories.toString()}
        ''');
    for (final skillCategory in skillCategories) {
      final List<Skill> skills = await container
          .read(jobseekerClientProvider)
          .skillSubCategories(languageCode, skillCategory.id);
      Logger.root.fine('''
        Language : $languageCode  
        Category ID: ${skillCategory.id}
        Skill Sub Categories from API : ${skills.toString}
        ''');
      skillsMap[skillCategory.id] = skills;
    }
    return;
  }

  Future<bool> submit() async {
    try {
      final SkillsResponse response =
          await container.read(jobseekerClientProvider).updateSkills(
                // "Token 0b553d5dcd3dcf64fb35af547a605b6e4e5d0c49362df35d909290b71b578136",
                "Token ${container.read(userActionsProvider).loginResponse!.token}",
                SkillsUpdate(skill: selectedSkills!),
              );
      Logger.root.fine(response);
      return response.status;
    } catch (exception, stack) {
      Logger.root.severe("Skills Update failed", exception, stack);
      container.read(crashlyticsProvider).recordError(exception, stack);
      return false;
    }
  }
}
