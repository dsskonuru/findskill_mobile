

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_location.dart';

abstract class LocationServiceRepository {
  Future<Either<Failure,UserLocation>> getUserLocation();
}

