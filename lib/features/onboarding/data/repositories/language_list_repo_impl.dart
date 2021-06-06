import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/language_list_repo.dart';
import '../datasources/language_list_local_data_source.dart';
import '../datasources/language_list_remote_data_source.dart';
import '../models/languages_list_model.dart';

class LanguagesListRepositoryImpl implements LanguagesListRepository {
  final LanguagesListRemoteDataSource remoteDataSource;
  final LanguagesListLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  LanguagesListRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, LanguagesListModel>> getLanguagesList() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteLanguages = await remoteDataSource.getLanguages();
        localDataSource.cacheLanguages(remoteLanguages);
        return Right(remoteLanguages);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localLanguages = await localDataSource.getLastLanguages();
        return Right(localLanguages);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}