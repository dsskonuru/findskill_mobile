

import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:find_skill/features/registration/phone_authentication/domain/repositories/phone_authentication_repository.dart';
import 'package:find_skill/features/registration/phone_authentication/domain/usecases/is_authenticated.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPhoneAuthneticationRepository extends Mock implements AuthneticationServiceRepository {
  
}

void main() {
  late IsAuthenticated isAuthenticated;
  late MockPhoneAuthneticationRepository mockPhoneAuthneticationRepository;

  setUp(() {
    mockPhoneAuthneticationRepository = MockPhoneAuthneticationRepository();
    isAuthenticated = IsAuthenticated(phoneAuthneticationRepository: mockPhoneAuthneticationRepository);

  });

  const String phoneNumber = "+911234567890";

  test("should get true value if authenticated", () async{
    when(() => mockPhoneAuthneticationRepository.isAuthenticated(phoneNumber)).thenAnswer((invocation) async => Future.value(const Right(true)));
    final result = await isAuthenticated.call(phoneNumber);

    expect(result, const Right(true));
  });

  test("should get false value if not authenticated", () async{
    when(() => mockPhoneAuthneticationRepository.isAuthenticated(phoneNumber)).thenAnswer((invocation) async => Future.value(const Right(false)));
    final result = await isAuthenticated.call(phoneNumber);

    expect(result, const Right(false));
  });
}