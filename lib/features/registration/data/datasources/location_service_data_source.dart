import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/location/location_info.dart';
import '../models/user_location_model.dart';

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
    final LocationData locationData = await locationInfo.getLocation; //returned null
    final address =
        await _getAddress(locationData.latitude!, locationData.longitude!); 

    return address;
  }

  Future<UserLocationModel> _getAddress(
    double latitude,
    double longitude,
  ) async {
    //GeoCode geoCode = GeoCode();
    // 18.664811124117733, 73.71325537623963
    
     final List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
     final Placemark placemak = placemarks[0];
    
    try {
      return UserLocationModel(
        latitude: latitude.toString(),
        longitude: longitude.toString(),
        country: placemak.country.toString(),                     //address.countryName.toString(),
        state:  placemak.administrativeArea.toString(),                          //region,
        district:  placemak.locality.toString(),                     //address.city.toString(),
        placeName: placemak.subLocality.toString(),                   //address.streetAddress.toString(),
      );
    } catch (e) {
      throw CacheFailure();
    }
  }
}
