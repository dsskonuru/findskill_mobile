import 'package:find_skill/core/services/services.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:logging/logging.dart';

import '../../../../core/error/exceptions.dart';

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
    LanguagesListModel _languages;
    client.getLanguages().then(
      (languages) {
        _languages = languages;
        languagesLog.fine(languages);
        return _languages;
      },
    );
    throw ServerException();
  }
}
