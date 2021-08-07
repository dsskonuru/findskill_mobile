import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/providers/firebase_provider.dart';
import '../../../../../core/services/job_seeker_services.dart';
import '../../../../../main.dart';
import '../models/skill.dart';

class SkillsListRemoteDataSource {
  /// Calls the following endpoint :
  /// .../skill-sub-category-list?language={languageCode}&category={categoryId}
  ///
  /// Throws a [ServerException] for all error codes.

  final JobSeekerClient client;

  SkillsListRemoteDataSource({required this.client});

  Future<List<Skill>> getSkills(String languageCode, String categoryId) async {
    try {
      final List<Skill> _skillsList = await container
          .read(jobSeekerClientProvider)
          .skillSubCategories(languageCode, categoryId);
      Logger.root.fine('''
        Language : $languageCode  
        Category ID: $categoryId
        Skill Sub Categories from API : ${_skillsList.toString}
        ''');
      return _skillsList;
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      Logger.root.severe(
          'Unable to get skill sub categories list from API', exception, stack);
      throw ServerException();
    }
  }
}

final skillsRemoteProvider = Provider<SkillsListRemoteDataSource>(
  (ref) {
    final _jobSeekerClient = container.read(jobSeekerClientProvider);
    final _languagesListRemoteDataSource =
        SkillsListRemoteDataSource(client: _jobSeekerClient);
    return _languagesListRemoteDataSource;
  },
);
