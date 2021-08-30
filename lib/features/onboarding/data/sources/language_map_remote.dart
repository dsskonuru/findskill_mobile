import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/services/auth_services.dart';
import '../../../../main.dart';

class LanguageMapRemoteDataSource {
  /// Calls the http://198.23.196.159:8000/api/auth//static-string?language={languageCode} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.

  final AuthClient client;

  LanguageMapRemoteDataSource({required this.client});

  Future<Map<String, String>> getLanguageMap(String languageCode) async {
    try {
      final String _jsonString =
          await container.read(authClientProvider).getLanguageMap(languageCode);
      final Map<String, dynamic> _jsonMap =
          json.decode(_jsonString) as Map<String, dynamic>;
      final Map<String, String> _localizedLocale = _jsonMap.map(
        (key, value) => MapEntry(key.toString(), value.toString()),
      );
      Logger.root.fine("Remote Languages Map : $_localizedLocale");
      return _localizedLocale;
    } catch (exception, stack) {
      Logger.root.severe("Error fetching remote langauge map");
      container.read(crashlyticsProvider).recordError(exception, stack);
      throw ServerException();
    }
  }
}

final languageMapRemoteProvider = Provider<LanguageMapRemoteDataSource>(
  (ref) {
    final _authClient = container.read(authClientProvider);
    final _languagesListRemoteDataSource =
        LanguageMapRemoteDataSource(client: _authClient);
    return _languagesListRemoteDataSource;
  },
);
