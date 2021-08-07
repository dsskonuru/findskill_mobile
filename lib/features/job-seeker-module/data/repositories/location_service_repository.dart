import 'package:dartz/dartz.dart';
import 'package:location/location.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/services/location_service.dart';
import '../../../../../main.dart';
import '../models/user_location.dart';
import '../sources/location_service_data_source.dart';

class LocationServiceRepository {
  final LocationServiceDataSource locationServiceDataSource;
  final LocationService locationService;

  LocationServiceRepository({
    required this.locationServiceDataSource,
    required this.locationService,
  });

  Future<Either<Failure, UserLocation>> getUserLocation() async {
    /// Test if location services are enabled.
    bool _serviceEnabled = await locationService.serviceEnabled;

    if (!_serviceEnabled) {
      /// Location services are not enabled don't continue
      /// accessing the position and request users of the
      /// App to enable the location services.
      _serviceEnabled = await locationService.requestService;
      if (!_serviceEnabled) {
        return Left(LocationFailure("Location service not enabled"));
      }
    }
    PermissionStatus _permissionGranted = await locationService.hasPermission;

    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await locationService.requestPermission;
      if (_permissionGranted == PermissionStatus.denied) {
        // Permissions are denied
        return Left(LocationFailure("Permission denied"));
      }
    }

    try {
      final UserLocation _locationData =
          await locationServiceDataSource.getUserLocation();
      return Right(_locationData);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}

final locationProvider = Provider<LocationServiceRepository>(
  (ref) {
    final _locationRepository = LocationServiceRepository(
      locationService: container.read(locationServiceProvider),
      locationServiceDataSource: container.read(locationDataSourceProvider),
    );
    return _locationRepository;
  },
);
