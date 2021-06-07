import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:find_skill/features/registration/domain/entities/user_location.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  const UserLocationModel userLocationModel = UserLocationModel(
    latitude: "12.50",
    longitude: "34.2",
    country: "India",
    state: "Maharashtra",
    district: "Pune",
    placeName: "Viman Nagar",
  );
  test(
    'should be a subclass of UserLocation entity',
    () async {
      // assert
      expect(userLocationModel, isA<UserLocation>());
    },
  );
}
