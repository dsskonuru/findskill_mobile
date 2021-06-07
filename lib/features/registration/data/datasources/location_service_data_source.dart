import 'package:find_skill/core/location/location_info.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:location/location.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';

abstract class LocationServiceDataSource {
  Future<UserLocationModel> getUserLocation();
}

class LocationServiceDataSourceImpl extends LocationServiceDataSource {
  final LocationInfo locationInfo;
  LocationServiceDataSourceImpl({
    required this.locationInfo,
  });

  @override
  Future<UserLocationModel> getUserLocation() async {
    final LocationData locationData = await locationInfo.getLocation;
    final address =  await _getAddress(locationData.latitude!, locationData.longitude!);
    return address;
  }

  Future<UserLocationModel> _getAddress(
    double latitude,
    double longitude,
  ) async {
    final List<geo.Placemark> placemarks =
        await geo.placemarkFromCoordinates(latitude, longitude);
    final geo.Placemark placemark = placemarks[0];
    return UserLocationModel(
      latitude: latitude.toString(),
      longitude: longitude.toString(),
      country: placemark.country.toString(),
      state: placemark.administrativeArea.toString(),
      district: placemark.locality.toString(),
      placeName: placemark.street.toString(),
    );
  }
}
