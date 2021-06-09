

import 'package:dartz/dartz.dart';
import 'package:find_skill/core/error/failures.dart';

abstract class AuthneticationServiceRepository {
  Future<Either<Failure, bool>> isAuthenticated(String phoneNumber);
} 