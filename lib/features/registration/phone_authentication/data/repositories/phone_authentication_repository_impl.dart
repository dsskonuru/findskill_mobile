import 'package:dartz/dartz.dart';

import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/core/network/network_info.dart';
import 'package:find_skill/features/registration/phone_authentication/data/datasources/phone_autentication_service_data_source.dart';
import 'package:find_skill/features/registration/phone_authentication/domain/repositories/phone_authentication_repository.dart';

class AuthneticationServiceRepositoryImpl
    extends AuthneticationServiceRepository {
  final NetworkInfo networkInfo;
  final AuthneticationServiceDataSource authneticationServiceDataSource;
  AuthneticationServiceRepositoryImpl({
    required this.networkInfo,
    required this.authneticationServiceDataSource,
  });
  @override
  Future<Either<Failure, bool>> isAuthenticated(String phoneNumber) async {
    if (await networkInfo.isConnected) {
      return Right(
          await authneticationServiceDataSource.isAuthenticated(phoneNumber));
    } else {
      return Left(CacheFailure());
    }
  }
}
