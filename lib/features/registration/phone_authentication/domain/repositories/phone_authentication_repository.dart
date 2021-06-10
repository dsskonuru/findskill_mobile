

import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';

abstract class AuthneticationServiceRepository {
  Future<Either<Failure, bool>> isAuthenticated(String phoneNumber);
} 