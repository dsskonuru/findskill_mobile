import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/services/location_service.dart';
import '../../../../../main.dart';
import '../models/user_location.dart';

class LocationServiceDataSource {
  final LocationService locationService;
  LocationServiceDataSource({
    required this.locationService,
  });

  Future<UserLocation> getUserLocation() async {
    final LocationData locationData =
        await locationService.getLocation; //returned null
    final address =
        await _getAddress(locationData.latitude!, locationData.longitude!);

    return address;
  }

  Future<UserLocation> _getAddress(
    double latitude,
    double longitude,
  ) async {
    //GeoCode geoCode = GeoCode();
    // 18.664811124117733, 73.71325537623963

    final List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    final Placemark placemak = placemarks[0];

    try {
      return UserLocation(
        latitude: latitude.toString(),
        longitude: longitude.toString(),
        country: placemak.country.toString(), //address.countryName.toString(),
        state: placemak.administrativeArea.toString(), //region,
        district: placemak.locality.toString(), //address.city.toString(),
        placeName:
            placemak.subLocality.toString(), //address.streetAddress.toString(),
      );
    } catch (e) {
      throw CacheFailure();
    }
  }
}

final locationDataSourceProvider = Provider<LocationServiceDataSource>(
  (ref) {
    final _skillCategoriesListLocalDataSource = LocationServiceDataSource(
      locationService: container.read(locationServiceProvider),
    );
    return _skillCategoriesListLocalDataSource;
  },
);
