

import 'package:dartz/dartz.dart';
import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/features/registration/domain/entities/user_location.dart';

abstract class LocationServiceRepository {
  Future<Either<Failure,UserLocation>> getUserLocation();
}

