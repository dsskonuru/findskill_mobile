import 'package:findskill/core/services/job_seeker_services.dart';
import 'package:findskill/features/registration/data/models/skills.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/providers/firebase_provider.dart';

import '../../../../../main.dart';

class SkillCategoriesResponseListRemoteDataSource {
  /// Calls the  following endpoint :
  /// http://198.23.196.159:8000/skill-category-list?language={languageCode}
  ///
  /// Throws a [ServerException] for all error codes.

  final JobseekerClient client;

  SkillCategoriesResponseListRemoteDataSource({required this.client});

  Future<List<SkillCategoryResponse>> getSkillCategoriesResponseList(
      String languageCode) async {
    try {
      final List<SkillCategoryResponse> _skillCategoriesList = await container
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
    Provider<SkillCategoriesResponseListRemoteDataSource>(
  (ref) {
    final _jobseekerClient = container.read(jobseekerClientProvider);
    final _skillCategoriesListRemoteDataSource =
        SkillCategoriesResponseListRemoteDataSource(client: _jobseekerClient);
    return _skillCategoriesListRemoteDataSource;
  },
);
