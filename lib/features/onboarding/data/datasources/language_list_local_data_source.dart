import 'dart:convert';

import 'package:find_skill/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/languages_list_model.dart';

abstract class LanguagesListLocalDataSource {
  /// Gets the cached [LanguagesListModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<LanguagesListModel> getLastLanguages();

  Future<void> cacheLanguages(LanguagesListModel triviaToCache);
}

const String cachedLanguagesList = 'CACHED_LANGUAGES_LIST';

class LanguagesListLocalDataSourceImpl implements LanguagesListLocalDataSource {
  final SharedPreferences sharedPreferences;

  LanguagesListLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<LanguagesListModel> getLastLanguages() {
    final jsonString = sharedPreferences.getString(cachedLanguagesList);
    if (jsonString != null) {
      final jsonValue = json.decode(jsonString) as Map<String, dynamic>;
      return Future.value(LanguagesListModel.fromJson(jsonValue));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheLanguages(LanguagesListModel languagesToCache) {
    return sharedPreferences.setString(
      cachedLanguagesList,
      json.encode(languagesToCache.toJson()),
    );
  }
}
