import 'package:dartz/dartz.dart';
import 'package:find_skill/core/error/failures.dart';
import 'package:find_skill/features/registration/phone_authentication/domain/repositories/phone_authentication_repository.dart';

class IsAuthenticated {
  final AuthneticationServiceRepository phoneAuthneticationRepository;
  IsAuthenticated({
    required this.phoneAuthneticationRepository,
  });

  Future<Either<Failure, bool>> call(String phoneNumber) async {
    return await phoneAuthneticationRepository.isAuthenticated(phoneNumber);
  }
  
}
