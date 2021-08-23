import 'dart:convert';

import 'package:findskill/features/registration/data/models/skills.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/providers/shared_preferences_provider.dart';
import '../../../../../main.dart';
import '../../../../core/providers/firebase_provider.dart';


const String cachedSkills = 'CACHED_SKILLS';
const String cachedSkillsLanguage = 'CACHED_SKILLS_LANGUAGE';
const String cachedSkillsCategory = 'CACHED_SKILLS_CATEGORY';

class SkillsListLocalDataSource {
  /// Gets the cached [SkillsList] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  final SharedPreferences sharedPreferences;

  SkillsListLocalDataSource({required this.sharedPreferences});

  Future<List<Skill>> getLastSkills(String languageCode, String categoryId) {
    try {
      final _cachedSkillsLanguage =
          sharedPreferences.getString(cachedSkillsLanguage);
      final _cachedSkillsCategory =
          sharedPreferences.getString(cachedSkillsCategory);
      if (_cachedSkillsCategory != null &&
          _cachedSkillsLanguage != null &&
          _cachedSkillsCategory == categoryId &&
          _cachedSkillsLanguage == languageCode) {
        final _jsonString = sharedPreferences.getString(cachedSkills);
        if (_jsonString != null) {
          final Map<String, dynamic> _jsonMap =
              json.decode(_jsonString) as Map<String, dynamic>;
          final Map<String, String> _localizedSkillsList = _jsonMap.map(
            (key, value) => MapEntry(key, value.toString()),
          );
          Logger.root.fine('''
            Language : $languageCode  
            Category ID: $categoryId 
            Skill Sub Categories from API : ${_localizedSkillsList.toString}
            ''');
          final SkillsList _skillsList =
              SkillsList.fromJson(_localizedSkillsList);
          return Future.value(_skillsList.list);
        }
      }
      throw CacheException();
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      Logger.root.severe('Unable to get skill sub categories list from Cache',
          exception, stack);
      throw CacheException();
    }
  }

  Future<void> cacheSkills(List<Skill> skillsListToCache, String languageCode,
      String categoryId) async {
    final SkillsList skillsToCache = SkillsList(list: skillsListToCache);
    try {
      await sharedPreferences.setString(
        cachedSkillsLanguage,
        json.encode(languageCode),
      );
      await sharedPreferences.setString(
        cachedSkillsCategory,
        json.encode(categoryId),
      );
      await sharedPreferences.setString(
        cachedSkills,
        json.encode(skillsToCache),
      );
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      Logger.root
          .severe('Could not fetch cached skills', exception, stack);
    }
  }
}

final skillsLocalProvider = Provider<SkillsListLocalDataSource>(
  (ref) {
    final _skillsLocalDataSource = SkillsListLocalDataSource(
      sharedPreferences: container.read(cacheProvider).sharedPreferences!,
    );
    return _skillsLocalDataSource;
  },
);
