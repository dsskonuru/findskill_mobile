import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/skill.dart';
import '../../../data/models/skill_category.dart';

final skillsProvider = ChangeNotifierProvider.autoDispose<SkillsNotifier>(
    (ref) => SkillsNotifier());

class SkillsNotifier extends ChangeNotifier {
  SkillsList? _skillsList;
  SkillsList? get skillsList => _skillsList;
  set skillsList(SkillsList? skillsList) {
    _skillsList = skillsList;
    notifyListeners();
  }

  SkillCategoriesList? _skillCategoriesList;
  SkillCategoriesList? get skillCategoriesList => _skillCategoriesList;
  set skillCategoriesList(SkillCategoriesList? skillCategoriesList) {
    _skillCategoriesList = skillCategoriesList;
    notifyListeners();
  }
}
