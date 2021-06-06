import 'package:dartz/dartz.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:find_skill/features/onboarding/domain/repositories/language_list_repo.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

class GetLanguages implements UseCase<LanguagesListModel, NoParams> {
  final LanguagesListRepository repository;

  GetLanguages(this.repository);

  @override
  Future<Either<Failure, LanguagesListModel>> call(NoParams params) {
    return repository.getLanguagesList();
  }
}