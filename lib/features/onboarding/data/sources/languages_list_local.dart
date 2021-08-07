import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../../main.dart';
import '../models/language.dart';

const String cachedLanguagesList = 'CACHED_LANGUAGES_LIST';

class LanguagesListLocalDataSource {
  /// Gets the cached [LanguagesListModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  final SharedPreferences sharedPreferences;

  LanguagesListLocalDataSource({required this.sharedPreferences});

  Future<LanguagesList> getLastLanguages() {
    final _jsonString = sharedPreferences.getString(cachedLanguagesList);
    if (_jsonString != null) {
      final Map<String, dynamic> _jsonMap =
          json.decode(_jsonString) as Map<String, dynamic>;
      final Map<String, String> _localizedLanguagesList = _jsonMap.map(
        (key, value) => MapEntry(key.toString(), value.toString()),
      );
      Logger.root.fine("Localized Languages List : $_localizedLanguagesList");
      return Future.value(LanguagesList.fromJson(_localizedLanguagesList));
    } else {
      Logger.root.severe("Error fetching local langauges list");
      throw CacheException();
    }
  }

  Future<void> cacheLanguages(LanguagesList languagesToCache) {
    return sharedPreferences.setString(
      cachedLanguagesList,
      json.encode(languagesToCache.toJson()),
    );
  }
}

final languagesListLocalProvider =
    Provider<LanguagesListLocalDataSource>(
  (ref) {
    final _languagesListLocalDataSource = LanguagesListLocalDataSource(
      sharedPreferences: container.read(cacheProvider).sharedPreferences!,
    );
    return _languagesListLocalDataSource;
  },
);
