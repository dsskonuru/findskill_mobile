import 'package:logging/logging.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/services/services.dart';
import '../models/languages_list_model.dart';

abstract class LanguagesListRemoteDataSource {
  /// Calls the http://198.23.196.159:8000/api/auth/language-list endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<LanguagesListModel> getLanguages();
}

final languagesLog = Logger('LanguagesListRemoteDataSourceImpl');

class LanguagesListRemoteDataSourceImpl
    implements LanguagesListRemoteDataSource {
  final RestClient client;

  LanguagesListRemoteDataSourceImpl({required this.client});

  @override
  Future<LanguagesListModel> getLanguages() async {
    try {
      final LanguagesListModel languages = await client.getLanguages();
      return languages;
    } on Exception {
      throw ServerException();
    }
  }
}
