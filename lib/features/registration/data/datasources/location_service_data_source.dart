import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/core/location/location_info.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';

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
      // final Address address = await geoCode.reverseGeocoding(
      //     latitude: latitude, longitude: longitude);
      // final String _region = address.region!;
      // bool flag = false;
      // bool firstCharacter = false;
      // String region = "";

      // for (var i = 0; i < _region.length; i++) {
      //   if (_region[i] == ",") {
      //     flag = true;
      //   }

      //   if (((_region[i] != " ") & (_region[i] != ",")) & flag) {
      //     firstCharacter = true;
      //   }
      //   if (flag & firstCharacter) {
      //     region = region + _region[i];
      //   }
      // }

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
