import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/services/location_service.dart';
import '../../../../../main.dart';
import '../../../registration/data/models/user_location.dart';
import 'country_codes.dart';

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

  Future<UserLocation> _getAddress(double latitude, double longitude) async {
    final List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    final Placemark placemark = placemarks[0];

    try {
      return UserLocation(
        latitude: latitude,
        longitude: longitude,
        country: placemark.country!,
        state: placemark.administrativeArea!,
        district: placemark.locality!,
        placeName: placemark.subLocality!,
        countryCode: countryCode[placemark.isoCountryCode!]!,
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
