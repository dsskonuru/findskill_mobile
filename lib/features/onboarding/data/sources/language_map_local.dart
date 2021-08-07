import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../../main.dart';

const String cachedLanguageMap = 'CACHED_LANGUAGE_LOCALE';

class LanguageMapLocalDataSource {
  /// Gets the cached [LanguagesLocale] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  final SharedPreferences sharedPreferences;

  LanguageMapLocalDataSource({required this.sharedPreferences});

  Future<Map<String, String>> getLastLanguageMap() {
    final jsonString = sharedPreferences.getString(cachedLanguageMap);
    if (jsonString != null) {
      final Map<String, String> jsonValue =
          json.decode(jsonString) as Map<String, String>;
      Logger.root.fine("Last Language Map : ${jsonValue.toString()}");
      return Future.value(jsonValue);
    } else {
      Logger.root.severe("Error fetching local langauge map");
      throw CacheException();
    }
  }

  Future<void> cacheLanguageMap(Map<String, String> languageMapToCache) {
    return sharedPreferences.setString(
      cachedLanguageMap,
      json.encode(languageMapToCache),
    );
  }
}

final languageMapLocalProvider = Provider<LanguageMapLocalDataSource>(
  (ref) {
    final _languageMapLocalDataSource = LanguageMapLocalDataSource(
      sharedPreferences: container.read(cacheProvider).sharedPreferences!,
    );
    return _languageMapLocalDataSource;
  },
);
