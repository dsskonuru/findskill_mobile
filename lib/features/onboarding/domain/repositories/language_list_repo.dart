import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/languages_list_model.dart';

abstract class LanguagesListRepository {
  Future<Either<Failure, LanguagesListModel>> getLanguagesList();
}