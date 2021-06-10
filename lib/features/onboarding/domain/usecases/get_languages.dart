import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../main.dart';
import '../../data/models/languages_list_model.dart';
import '../../data/repositories/language_list_repo.dart';

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
