import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/services/services.dart';
import '../../../../main.dart';
import '../models/language.dart';

class LanguagesListRemoteDataSource {
  /// Calls the http://198.23.196.159:8000/api/auth/language-list endpoint.
  ///
  /// Throws a [ServerException] for all error codes.

  final RestClient client;

  LanguagesListRemoteDataSource({required this.client});

  Future<LanguagesList> getLanguages() async {
    try {
      final LanguagesList _languages = await client.getLanguagesList();
      return _languages;
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      throw ServerException();
    }
  }
}

final languagesListRemoteProvider = Provider<LanguagesListRemoteDataSource>(
  (ref) {
    final _restClient = container.read(dioClientProvider);
    final _languagesListRemoteDataSource =
        LanguagesListRemoteDataSource(client: _restClient);
    return _languagesListRemoteDataSource;
  },
);
