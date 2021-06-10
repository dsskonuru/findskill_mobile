import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_location.dart';
import '../repositories/location_service_repository.dart';

class GetUserLocation {
  final LocationServiceRepository locationServiceRepository;
  GetUserLocation({
    required this.locationServiceRepository,
  });

  Future<Either<Failure, UserLocation>> call() async {
    return locationServiceRepository.getUserLocation();
  }
}
