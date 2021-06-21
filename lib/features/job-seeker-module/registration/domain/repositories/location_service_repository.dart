import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../data/models/user_location_model.dart';

abstract class LocationServiceRepository {
  Future<Either<Failure, UserLocationModel>> getUserLocation();
}
