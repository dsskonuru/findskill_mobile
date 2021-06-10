import 'package:dartz/dartz.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';

import '../../../../core/error/failures.dart';
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
