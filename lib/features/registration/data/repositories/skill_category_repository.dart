import 'package:dartz/dartz.dart';
import 'package:findskill/features/registration/data/models/skills.dart';
import 'package:findskill/features/registration/data/sources/skill_category_local.dart';
import 'package:findskill/features/registration/data/sources/skill_category_remote.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../main.dart';

class SkillCategoryRepository {
  final SkillCategoriesResponseListRemoteDataSource remoteDataSource;
  final SkillCategoriesResponseListLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SkillCategoryRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, List<SkillCategoryResponse>>> getSkillCategories(
      String languageCode) async {
    if (await networkInfo.isConnected) {
      try {
        final _remoteSkillCategoriesResponseList =
            await remoteDataSource.getSkillCategoriesResponseList(languageCode);
        localDataSource.cacheSkillCategories(
            _remoteSkillCategoriesResponseList, languageCode);
        return Right(_remoteSkillCategoriesResponseList);
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
