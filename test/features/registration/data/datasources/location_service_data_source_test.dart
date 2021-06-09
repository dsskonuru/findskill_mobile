import 'package:find_skill/core/location/location_info.dart';
import 'package:find_skill/features/registration/data/datasources/location_service_data_source.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:geocoding/geocoding.dart' as geo;
import 'package:location/location.dart';
import 'package:mocktail/mocktail.dart';

class MockLocation extends Mock implements Location {}

void main() {
  final MockLocation mockLocation = MockLocation();
  final LocationInfo locationInfo = LocationInfo(location: mockLocation);
  late LocationServiceDataSourceImpl locationServiceDataSourceImpl;

  setUp(() {
    locationServiceDataSourceImpl =
        LocationServiceDataSourceImpl(locationInfo: locationInfo);
  });

  const UserLocationModel userLocation = UserLocationModel(
    latitude: "18.664811124117733",
    longitude: "73.71325537623963",
    country: "India",
    state: "Maharashtra",
    district: "Pune",
    placeName:
        "Kunal Iconia, Survey #10/1, Kiwale - Mamurdi Rd Nr. Symbiosis open university  and  Express highway",
  );

  final LocationData locationData = LocationData.fromMap(
    {
      "latitude": 18.664811124117733,
      "longitude": 73.71325537623963,
      "country": "India",
      "state": "Maharashtra",
      "district": "Pune",
      "placeName":
          "Kunal Iconia, Survey #10/1, Kiwale - Mamurdi Rd Nr. Symbiosis open university  and  Express highway",
    },
  );

  group(
    'getLocation',
    () {
      when(() => mockLocation.getLocation()).thenAnswer(
        (_) async => locationData,
      );
      // when(() => geo.placemarkFromCoordinates().then((value) => null));

      test(
        'getLocation should convert results correctly',
        () async {
          final UserLocationModel receivedLocation =
              await locationServiceDataSourceImpl.getUserLocation();
          expect(receivedLocation.latitude, userLocation.latitude);
          expect(receivedLocation.country, userLocation.country);
          expect(receivedLocation.state, userLocation.state);
        },
      );
    },
  );
}
