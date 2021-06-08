import 'package:dartz/dartz.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:find_skill/features/onboarding/data/repositories/language_list_repo.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../main.dart';

class GetLanguages implements UseCase<LanguagesListModel, NoParams> {
  final LanguagesListRepository repository;

  GetLanguages({required this.repository});

  @override
  Future<Either<Failure, LanguagesListModel>> call(NoParams params) {
    return repository.getLanguagesList();
  }
}

final languagesProvider = Provider<GetLanguages>(
  (ref) {
    final _getLanguages = GetLanguages(
        repository: container.read(languagesListRepositoryProvider));
    return _getLanguages;
  },
);
