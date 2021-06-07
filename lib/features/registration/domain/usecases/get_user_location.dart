import 'package:dartz/dartz.dart';
import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/features/registration/domain/entities/user_location.dart';
import 'package:find_skill/features/registration/domain/repositories/location_service_repository.dart';

class GetUserLocation {
  final LocationServiceRepository locationServiceRepository;
  GetUserLocation({
    required this.locationServiceRepository,
  });

  Future<Either<Failure, UserLocation>> call() async {
    return locationServiceRepository.getUserLocation();
  }
}
