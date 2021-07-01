import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    final jsonString = sharedPreferences.getString(cachedLanguagesList);
    if (jsonString != null) {
      final jsonValue = json.decode(jsonString) as Map<String, dynamic>;
      return Future.value(LanguagesList.fromJson(jsonValue));
    } else {
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
