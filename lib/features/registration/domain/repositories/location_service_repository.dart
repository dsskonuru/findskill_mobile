import 'package:dartz/dartz.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';

import '../../../../core/error/failures.dart';

abstract class LocationServiceRepository {
  Future<Either<Failure, UserLocationModel>> getUserLocation();
}
