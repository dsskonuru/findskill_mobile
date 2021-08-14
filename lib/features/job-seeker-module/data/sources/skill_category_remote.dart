import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/providers/firebase_provider.dart';
import '../../../../../core/services/job_seeker_services.dart';
import '../../../../../main.dart';
import '../models/skill_category.dart';

class SkillCategoriesListRemoteDataSource {
  /// Calls the  following endpoint :
  /// http://198.23.196.159:8000/skill-category-list?language={languageCode}
  ///
  /// Throws a [ServerException] for all error codes.

  final JobseekerClient client;

  SkillCategoriesListRemoteDataSource({required this.client});

  Future<List<SkillCategory>> getSkillCategoriesList(
      String languageCode) async {
    try {
      final List<SkillCategory> _skillCategoriesList = await container
          .read(jobseekerClientProvider)
          .skillCategories(languageCode);
      Logger.root.fine('''
        Language : $languageCode  
        Skill Sub Categories from API : ${_skillCategoriesList.toString()}
        ''');
      return _skillCategoriesList;
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      Logger.root.severe(
          'Unable to get skill categories list from API', exception, stack);
      throw ServerException();
    }
  }
}

final skillCategoriesListRemoteProvider =
    Provider<SkillCategoriesListRemoteDataSource>(
  (ref) {
    final _jobseekerClient = container.read(jobseekerClientProvider);
    final _skillCategoriesListRemoteDataSource =
        SkillCategoriesListRemoteDataSource(client: _jobseekerClient);
    return _skillCategoriesListRemoteDataSource;
  },
);
