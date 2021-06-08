// import 'package:find_skill/core/location/location_info.dart';
// import 'package:find_skill/features/registration/domain/entities/user_location.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:location/location.dart';
// import 'package:mocktail/mocktail.dart';

// class MockLocation extends Mock implements Location {}

// void main() {
//   late LocationInfoImpl locationInfoImpl;
//   final MockLocation mockLocation = MockLocation();

//   setUp(() {
//     //mockLocation = MockLocation();
//     locationInfoImpl = LocationInfoImpl(location: mockLocation);
//   });

//   const UserLocation userLocation = UserLocation(
//     latitude: "12.50",
//     longitude: "34.2",
//     country: "India",
//     state: "Maharashtra",
//     district: "Pune",
//     placeName: "Viman Nagar",
//   );

//   group('getLocation', () {
//     when(() => mockLocation.getLocation()).thenAnswer((_) async {
//       return LocationData.fromMap(<String, dynamic>{
//         'latitude': 48.8534,
//         'longitude': 2.3488,
//       });
//     });

//     test('getLocation should convert results correctly', () async {
//       final LocationData receivedLocation = await locationInfoImpl.getLocation;
//       expect(receivedLocation.latitude, 48.8534);
//       expect(receivedLocation.longitude, 2.3488);
//     });

//     test('getLocation should convert to string correctly', () async {
//       final LocationData receivedLocation = await locationInfoImpl.getLocation;

//       expect(receivedLocation.toString(),
//           'LocationData<lat: ${receivedLocation.latitude}, long: ${receivedLocation.longitude}>');
//     });
//   });

//   group('serviceEnabled-requestService', () {
//     when(() => mockLocation.serviceEnabled()).thenAnswer((_) async => true);
//     when(() => mockLocation.requestService()).thenAnswer((_) async => true);

//     test('serviceEnabled', () async {
//       final bool result = await locationInfoImpl.serviceEnabled;
//       expect(result, isTrue);
//     });

//     test('requestService', () async {
//       final bool result = await locationInfoImpl.requestService;
//       expect(result, isTrue);
//     });
//   });

//   test('hasPermission', () async {
//     when(() => mockLocation.hasPermission())
//         .thenAnswer((_) async => PermissionStatus.denied);
//     when(() => mockLocation.requestPermission())
//         .thenAnswer((_) async => PermissionStatus.denied);

//     PermissionStatus receivedPermission = await locationInfoImpl.hasPermission;
//     expect(receivedPermission, PermissionStatus.denied);

//     receivedPermission = await locationInfoImpl.requestPermission;
//     expect(receivedPermission, PermissionStatus.denied);
//   });
// }
