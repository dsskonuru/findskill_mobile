import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/services/services.dart';
import '../../../../main.dart';
import '../models/languages_list_model.dart';

class LanguagesListRemoteDataSource {
  /// Calls the http://198.23.196.159:8000/api/auth/language-list endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  
  final RestClient client;

  LanguagesListRemoteDataSource({required this.client});

  Future<LanguagesListModel> getLanguages() async {
    try {
      final LanguagesListModel languages = await client.getLanguages();
      return languages;
    } on Exception {
      throw ServerException();
    }
  }
}

final languagesListRemoteDataSourceProvider = Provider<LanguagesListRemoteDataSource>(
  (ref) {
    final _restClient = container.read(dioClientProvider);
    final _languagesListRemoteDataSource = LanguagesListRemoteDataSource(client: _restClient);
    return _languagesListRemoteDataSource;
  },
);
