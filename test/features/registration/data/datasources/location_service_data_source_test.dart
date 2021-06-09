import 'package:find_skill/core/location/location_info.dart';
import 'package:find_skill/features/registration/data/datasources/location_service_data_source.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationInfo extends Mock implements LocationInfo {}

void main() {
  final MockLocationInfo mockLocationInfo = MockLocationInfo();
  late LocationServiceDataSourceImpl locationServiceDataSourceImpl;

  setUp(() {
    //mockLocation = MockLocation();
    locationServiceDataSourceImpl =
        LocationServiceDataSourceImpl(locationInfo: mockLocationInfo);
  });

  const UserLocationModel userLocation = UserLocationModel(
    latitude: "18.664811124117733",
    longitude: "73.71325537623963",
    country: "India",
    state: "Maharashtra",
    district: "Pune",
    placeName: "Kunal Iconia, Survey #10/1, Kiwale - Mamurdi Rd Nr. Symbiosis open university  and  Express highway",
  );  

  group('getLocation', () {
    when(() => mockLocationInfo.getLocation).thenAnswer((_) async {
      return LocationData.fromMap(<String, dynamic>{
        'latitude': 18.664811124117733,
        'longitude': 73.71325537623963,
      });
    });

    when(() => mockLocationInfo.serviceEnabled).thenAnswer((_) async => true);
    when(() => mockLocationInfo.hasPermission).thenAnswer((_) async => PermissionStatus.granted);

    test('getLocation should convert results correctly', () async {
      final receivedLocation =
          await locationServiceDataSourceImpl.getUserLocation();
      expect(receivedLocation.latitude, userLocation.latitude);
      expect(receivedLocation.country, userLocation.country);
      expect(receivedLocation.state, userLocation.state);
    });
  });
}
