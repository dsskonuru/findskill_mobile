import 'dart:convert';

import 'package:riverpod/riverpod.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/services/services.dart';
import '../../../../main.dart';

class LanguageMapRemoteDataSource {
  /// Calls the http://198.23.196.159:8000/api/auth//static-string?language={languageCode} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.

  final RestClient client;

  LanguageMapRemoteDataSource({required this.client});

  Future<Map<String, String>> getLanguageJson(String languageCode) async {
    try {
      final String _jsonString =
          await container.read(dioClientProvider).getLanguageJson(languageCode);
      final Map<String, dynamic> _jsonMap =
          json.decode(_jsonString) as Map<String, dynamic>;
      final Map<String, String> _localizedLocale = _jsonMap.map(
        (key, value) => MapEntry(key.toString(), value.toString()),
      );
      return _localizedLocale;
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      throw ServerException();
    }
  }
}

final languageMapRemoteProvider = Provider<LanguageMapRemoteDataSource>(
  (ref) {
    final _restClient = container.read(dioClientProvider);
    final _languagesListRemoteDataSource =
        LanguageMapRemoteDataSource(client: _restClient);
    return _languagesListRemoteDataSource;
  },
);
