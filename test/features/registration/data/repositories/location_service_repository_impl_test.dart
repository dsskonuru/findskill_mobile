import 'package:dartz/dartz.dart';
import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/core/location/location_info.dart';
import 'package:find_skill/features/registration/data/datasources/location_service_data_source.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:find_skill/features/registration/data/repositories/location_service_repository_impl.dart';
import 'package:find_skill/features/registration/domain/entities/user_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationServiceDataSource extends Mock
    implements LocationServiceDataSource {}

class MockLocationInfo extends Mock implements LocationInfo {}

void main() {
  late LocationServiceRepositoryImpl locationServiceRepositoryImpl;
  late MockLocationServiceDataSource mockLocationServiceDataSource;
  late MockLocationInfo mockLocationInfo;

  setUp(() {
    mockLocationServiceDataSource = MockLocationServiceDataSource();
    mockLocationInfo = MockLocationInfo();
    locationServiceRepositoryImpl = LocationServiceRepositoryImpl(
      locationServiceDataSource: mockLocationServiceDataSource,
      locationInfo: mockLocationInfo,
    );
  });

  const UserLocationModel userLocationModel = UserLocationModel(
    latitude: "12.50",
    longitude: "34.2",
    country: "India",
    state: "Maharashtra",
    district: "Pune",
    placeName: "Viman Nagar",
  );

  const UserLocation userLocation = userLocationModel;

  group("location service ", () {
    test("Enabled", () async {
      when(() => mockLocationInfo.serviceEnabled)
          .thenAnswer((invocation) async => true);
      when(() => mockLocationInfo.hasPermission)
          .thenAnswer((_) async => PermissionStatus.granted);
      locationServiceRepositoryImpl.getUserLocation();
      verify(() => mockLocationInfo.serviceEnabled);
    });

    test(
      'should return UserLocation when location service is enabled and permission is granted',
      () async {
        // arrange
        when(() => mockLocationInfo.serviceEnabled)
            .thenAnswer((_) async => true);
        when(() => mockLocationInfo.hasPermission)
            .thenAnswer((_) async => PermissionStatus.granted);
        when(() => mockLocationServiceDataSource.getUserLocation())
            .thenAnswer((_) async => userLocationModel);
        // act
        final result = await locationServiceRepositoryImpl.getUserLocation();
        // assert
        verify(() => mockLocationServiceDataSource.getUserLocation());
        expect(result, equals(const Right(userLocation)));
      },
    );
  });

  test(
    'should return UserLocation when location service is enabled when requested and permission is granted',
    () async {
      // arrange
      when(() => mockLocationInfo.serviceEnabled)
          .thenAnswer((_) async => false);
      when(() => mockLocationInfo.requestService).thenAnswer((_) async => true);
      when(() => mockLocationInfo.hasPermission)
          .thenAnswer((_) async => PermissionStatus.granted);
      when(() => mockLocationServiceDataSource.getUserLocation())
          .thenAnswer((_) async => userLocationModel);
      // act
      final result = await locationServiceRepositoryImpl.getUserLocation();
      // assert
      verify(() => mockLocationServiceDataSource.getUserLocation());
      expect(result, equals(const Right(userLocation)));
    },
  );

  test(
    'should return location sevice not enabled error message',
    () async {
      // arrange
      when(() => mockLocationInfo.serviceEnabled)
          .thenAnswer((_) async => false);
      when(() => mockLocationInfo.requestService)
          .thenAnswer((_) async => false);
      when(() => mockLocationInfo.hasPermission)
          .thenAnswer((_) async => PermissionStatus.denied);
      when(() => mockLocationServiceDataSource.getUserLocation()).thenThrow(
          LocationFailure(errorMessage: "Location service not enabled"));
      // act
      final result = await locationServiceRepositoryImpl.getUserLocation();
      // assert
      expect(
          result,
          equals(Left(
              LocationFailure(errorMessage: "Location service not enabled"))));
    },
  );
}
