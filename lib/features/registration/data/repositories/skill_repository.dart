// import 'package:dartz/dartz.dart';
// import 'package:riverpod/riverpod.dart';

// import '../../../../../core/error/exceptions.dart';
// import '../../../../../core/error/failures.dart';
// import '../../../../../core/network/network_info.dart';
// import '../../../../../main.dart';
// import '../../../job-seeker-module/data/models/skills.dart';
// import '../sources/skill_local.dart';
// import '../sources/skill_remote.dart';

// class SkillRepository {
//   final SkillsListRemoteDataSource remoteDataSource;
//   final SkillsListLocalDataSource localDataSource;
//   final NetworkInfo networkInfo;

//   SkillRepository({
//     required this.remoteDataSource,
//     required this.localDataSource,
//     required this.networkInfo,
//   });

//   Future<Either<Failure, List<Skill>>> getSkills(
//       String languageCode, String categoryId) async {
//     if (await networkInfo.isConnected) {
//       try {
//         final _remoteSkillsList =
//             await remoteDataSource.getSkills(languageCode, categoryId);
//         localDataSource.cacheSkills(
//             _remoteSkillsList, languageCode, categoryId);
//         return Right(_remoteSkillsList);
//       } on ServerException {
//         return Left(ServerFailure());
//       }
//     } else {
//       try {
//         final _localSkillsList =
//             await localDataSource.getLastSkills(languageCode, categoryId);
//         return Right(_localSkillsList);
//       } on CacheException {
//         return Left(CacheFailure());
//       }
//     }
//   }
// }

// final skillsProvider = Provider<SkillRepository>(
//   (ref) {
//     final _skillRepository = SkillRepository(
//       localDataSource: container.read(skillsLocalProvider),
//       remoteDataSource: container.read(skillsRemoteProvider),
//       networkInfo: container.read(networkInfoProvider),
//     );
//     return _skillRepository;
//   },
// );
