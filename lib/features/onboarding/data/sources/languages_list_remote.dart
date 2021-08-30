import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/services/auth_services.dart';
import '../../../../main.dart';
import '../models/language.dart';

class LanguagesListRemoteDataSource {
  /// Calls the http://198.23.196.159:8000/api/auth/language-list endpoint.
  ///
  /// Throws a [ServerException] for all error codes.

  final AuthClient client;

  LanguagesListRemoteDataSource({required this.client});

  Future<LanguagesList> getLanguages() async {
    try {
      final LanguagesList _languages = await client.getLanguagesList();
      Logger.root.fine("Remote Languages List : $_languages");
      return _languages;
    } catch (exception, stack) {
      Logger.root.severe("Error fetching remote languages list");
      container.read(crashlyticsProvider).recordError(exception, stack);
      throw ServerException();
    }
  }
}

final languagesListRemoteProvider = Provider<LanguagesListRemoteDataSource>(
  (ref) {
    final _authClient = container.read(authClientProvider);
    final _languagesListRemoteDataSource =
        LanguagesListRemoteDataSource(client: _authClient);
    return _languagesListRemoteDataSource;
  },
);
