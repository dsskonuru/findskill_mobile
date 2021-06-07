import 'package:dartz/dartz.dart';

import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/core/location/location_info.dart';
import 'package:find_skill/features/registration/data/datasources/location_service_data_source.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:find_skill/features/registration/domain/entities/user_location.dart';
import 'package:find_skill/features/registration/domain/repositories/location_service_repository.dart';
import 'package:location/location.dart';

class LocationServiceRepositoryImpl extends LocationServiceRepository {
  final LocationServiceDataSource locationServiceDataSource;
  final LocationInfo locationInfo;
  LocationServiceRepositoryImpl({
    required this.locationServiceDataSource,
    required this.locationInfo,
  });

  @override
  Future<Either<Failure, UserLocation>> getUserLocation() async {
    /// Test if location services are enabled.
    bool _serviceEnabled = await locationInfo.serviceEnabled;

    if (!_serviceEnabled) {
      /// Location services are not enabled don't continue
      /// accessing the position and request users of the
      /// App to enable the location services.
      _serviceEnabled = await locationInfo.requestService;
      if (!_serviceEnabled) {
        return Left(
            LocationFailure(errorMessage: "Location service not enabled"));
      }
    }
    PermissionStatus _permissionGranted = await locationInfo.hasPermission;

    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await locationInfo.requestPermission;
      if (_permissionGranted == PermissionStatus.denied) {
        // Permissions are denied
        return Left(LocationFailure(errorMessage: "Permission denied"));
      }
    }

    try {
      final UserLocationModel _locationData =
          await locationServiceDataSource.getUserLocation();
      return Right(_locationData);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
