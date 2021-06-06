import 'package:dartz/dartz.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:find_skill/features/onboarding/domain/repositories/language_list_repo.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

class GetRandomNumberTrivia implements UseCase<LanguagesListModel, NoParams> {
  final LanguagesListRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, LanguagesListModel>> call(NoParams params) {
    return repository.getLanguagesList();
  }
}