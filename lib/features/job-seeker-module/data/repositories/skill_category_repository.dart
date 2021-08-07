import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../main.dart';
import '../models/skill_category.dart';
import '../sources/skill_category_local.dart';
import '../sources/skill_category_remote.dart';

class SkillCategoryRepository {
  final SkillCategoriesListRemoteDataSource remoteDataSource;
  final SkillCategoriesListLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SkillCategoryRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, List<SkillCategory>>> getSkillCategory(
      String languageCode) async {
    if (await networkInfo.isConnected) {
      try {
        final _remoteSkillCategoriesList =
            await remoteDataSource.getSkillCategoriesList(languageCode);
        localDataSource.cacheSkillCategories(
            _remoteSkillCategoriesList, languageCode);
        return Right(_remoteSkillCategoriesList);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final _localLanguages =
            await localDataSource.getLastSkillCategories(languageCode);
        return Right(_localLanguages);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}

final skillCategoryProvider = Provider<SkillCategoryRepository>(
  (ref) {
    final _skillCategoryRepository = SkillCategoryRepository(
      localDataSource: container.read(skillCategoriesListLocalProvider),
      remoteDataSource: container.read(skillCategoriesListRemoteProvider),
      networkInfo: container.read(networkInfoProvider),
    );
    return _skillCategoryRepository;
  },
);
