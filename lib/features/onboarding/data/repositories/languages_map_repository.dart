import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../main.dart';
import '../sources/language_map_local.dart';
import '../sources/language_map_remote.dart';

class LanguageMapRepository {
  final LanguageMapRemoteDataSource remoteDataSource;
  final LanguageMapLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  LanguageMapRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, Map<String, String>>> getLanguageMap(
      String languageCode) async {
    if (await networkInfo.isConnected) {
      try {
        final _remoteLanguageMap =
            await remoteDataSource.getLanguageMap(languageCode);
        localDataSource.cacheLanguageMap(_remoteLanguageMap);
        return Right(_remoteLanguageMap);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final _localLanguageMap = await localDataSource.getLastLanguageMap();
        return Right(_localLanguageMap);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}

final languageMapProvider = Provider<LanguageMapRepository>(
  (ref) {
    final _languageMapRepository = LanguageMapRepository(
      localDataSource: container.read(languageMapLocalProvider),
      remoteDataSource: container.read(languageMapRemoteProvider),
      networkInfo: container.read(networkInfoProvider),
    );
    return _languageMapRepository;
  },
);
