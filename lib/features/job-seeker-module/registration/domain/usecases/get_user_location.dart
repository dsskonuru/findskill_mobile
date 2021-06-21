import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../../data/models/user_location_model.dart';
import '../repositories/location_service_repository.dart';

class GetUserLocation {
  final LocationServiceRepository locationServiceRepository;
  GetUserLocation({
    required this.locationServiceRepository,
  });

  Future<Either<Failure, UserLocationModel>> call() async {
    return locationServiceRepository.getUserLocation();
  }
}
