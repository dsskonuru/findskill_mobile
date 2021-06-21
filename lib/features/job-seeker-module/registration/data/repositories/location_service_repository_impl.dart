import 'package:dartz/dartz.dart';
import 'package:location/location.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/location/location_info.dart';
import '../../domain/repositories/location_service_repository.dart';
import '../models/user_location_model.dart';
import '../sources/location_service_data_source.dart';

class LocationServiceRepositoryImpl extends LocationServiceRepository {
  final LocationServiceDataSource locationServiceDataSource;
  final LocationInfo locationInfo;
  LocationServiceRepositoryImpl({
    required this.locationServiceDataSource,
    required this.locationInfo,
  });

  @override
  Future<Either<Failure, UserLocationModel>> getUserLocation() async {
    /// Test if location services are enabled.
    bool _serviceEnabled = await locationInfo.serviceEnabled;

    if (!_serviceEnabled) {
      /// Location services are not enabled don't continue
      /// accessing the position and request users of the
      /// App to enable the location services.
      _serviceEnabled = await locationInfo.requestService;
      if (!_serviceEnabled) {
        return Left(LocationFailure("Location service not enabled"));
      }
    }
    PermissionStatus _permissionGranted = await locationInfo.hasPermission;

    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await locationInfo.requestPermission;
      if (_permissionGranted == PermissionStatus.denied) {
        // Permissions are denied
        return Left(LocationFailure("Permission denied"));
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
