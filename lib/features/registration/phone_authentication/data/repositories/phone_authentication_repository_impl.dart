import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/network/network_info.dart';
import '../../domain/repositories/phone_authentication_repository.dart';
import '../datasources/phone_autentication_service_data_source.dart';

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
