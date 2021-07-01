import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../main.dart';
import '../models/language.dart';
import '../sources/languages_list_local.dart';
import '../sources/languages_list_remote.dart';

class LanguagesListRepository {
  final LanguagesListRemoteDataSource remoteDataSource;
  final LanguagesListLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  LanguagesListRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, LanguagesList>> getLanguagesList() async {
    if (await networkInfo.isConnected) {
      try {
        final _remoteLanguages = await remoteDataSource.getLanguages();
        localDataSource.cacheLanguages(_remoteLanguages);
        return Right(_remoteLanguages);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final _localLanguages = await localDataSource.getLastLanguages();
        return Right(_localLanguages);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}

final languagesListProvider = Provider<LanguagesListRepository>(
  (ref) {
    final _languagesListRepository = LanguagesListRepository(
      localDataSource: container.read(languagesListLocalProvider),
      remoteDataSource: container.read(languagesListRemoteProvider),
      networkInfo: container.read(networkInfoProvider),
    );
    return _languagesListRepository;
  },
);
