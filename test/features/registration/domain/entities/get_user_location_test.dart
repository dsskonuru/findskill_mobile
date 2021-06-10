import 'package:dartz/dartz.dart';
import 'package:find_skill/features/registration/data/models/user_location_model.dart';
import 'package:find_skill/features/registration/domain/repositories/location_service_repository.dart';
import 'package:find_skill/features/registration/domain/usecases/get_user_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationServiceRepository extends Mock
    implements LocationServiceRepository {}

void main() {
  late final GetUserLocation getUserLocation;
  late final MockLocationServiceRepository mockLocationServiceRepository;

  setUp(() {
    mockLocationServiceRepository = MockLocationServiceRepository();
    getUserLocation = GetUserLocation(
        locationServiceRepository: mockLocationServiceRepository);
  });

  const UserLocationModel userLocation = UserLocationModel(
    latitude: "12.50",
    longitude: "34.2",
    country: "India",
    state: "Maharashtra",
    district: "Pune",
    placeName: "Viman Nagar",
  );

  test("should get user location from repository", () async {
    when(() => mockLocationServiceRepository.getUserLocation()).thenAnswer((realInvocation) async => Future.value(const Right(userLocation)));
    final result = await getUserLocation.call();
    expect(result, const Right(userLocation));
    expect(result.foldRight(result, (r, previous) => r.country), "India");
    expect(result.fold((_) => "error", (_) => "ok"), "ok");
    verify(() => mockLocationServiceRepository.getUserLocation());
    verifyNoMoreInteractions(mockLocationServiceRepository);
  });
}
