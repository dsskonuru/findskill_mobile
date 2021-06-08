import 'dart:convert';

import 'package:find_skill/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';
import '../models/languages_list_model.dart';

const String cachedLanguagesList = 'CACHED_LANGUAGES_LIST';

class LanguagesListLocalDataSource {
  /// Gets the cached [LanguagesListModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  final SharedPreferences sharedPreferences;

  LanguagesListLocalDataSource({required this.sharedPreferences});

  Future<LanguagesListModel> getLastLanguages() {
    final jsonString = sharedPreferences.getString(cachedLanguagesList);
    if (jsonString != null) {
      final jsonValue = json.decode(jsonString) as Map<String, dynamic>;
      return Future.value(LanguagesListModel.fromJson(jsonValue));
    } else {
      throw CacheException();
    }
  }

  Future<void> cacheLanguages(LanguagesListModel languagesToCache) {
    return sharedPreferences.setString(
      cachedLanguagesList,
      json.encode(languagesToCache.toJson()),
    );
  }
}

final languagesListLocalDataSourceProvider =
    Provider<LanguagesListLocalDataSource>(
  (ref) {
    final _languagesListLocalDataSource = LanguagesListLocalDataSource(
        sharedPreferences:
            container.read(sharedPreferencesProvider).sharedPreferences!);
    return _languagesListLocalDataSource;
  },
);

class SharedPreferencesNotifier extends ChangeNotifier {
  SharedPreferences? _sharedPreferences;
  SharedPreferences? get sharedPreferences => _sharedPreferences;
  void setSharedPreferences(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
    notifyListeners();
  }
}

final sharedPreferencesProvider =
    ChangeNotifierProvider<SharedPreferencesNotifier>(
        (ref) => SharedPreferencesNotifier());
