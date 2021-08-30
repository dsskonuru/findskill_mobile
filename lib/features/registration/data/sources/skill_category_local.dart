// import 'dart:convert';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:logging/logging.dart';
// import 'package:riverpod/riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../../../core/error/exceptions.dart';
// import '../../../../../core/providers/shared_preferences_provider.dart';
// import '../../../../../main.dart';
// import '../../../../core/providers/firebase_provider.dart';
// import '../../../job-seeker-module/data/models/skills.dart';

// const String cachedSkillCategories = 'CACHED_SKILL_CATEGORY';
// const String cachedSkillCategoriesLanguage = 'CACHED_SKILL_CATEGORY_LANGUAGE';

// class SkillCategoriesResponseListLocalDataSource {
//   /// Gets the cached [SkillCategoriesResponseList] which was gotten the last time
//   /// the user had an internet connection.
//   ///
//   /// Throws [CacheException] if no cached data is present.

//   final SharedPreferences sharedPreferences;

//   SkillCategoriesResponseListLocalDataSource({required this.sharedPreferences});

//   Future<List<SkillCategoryResponse>> getLastSkillCategories(
//       String languageCode) {
//     try {
//       final _cachedSkillCategoriesLanguage =
//           sharedPreferences.getString(cachedSkillCategoriesLanguage);
//       if (_cachedSkillCategoriesLanguage != null &&
//           _cachedSkillCategoriesLanguage == languageCode) {
//         final _jsonString = sharedPreferences.getString(cachedSkillCategories);
//         if (_jsonString != null) {
//           final Map<String, dynamic> _jsonMap =
//               json.decode(_jsonString) as Map<String, dynamic>;
//           final Map<String, String> _localizedSkillCategoriesResponseList =
//               _jsonMap.map(
//             (key, value) => MapEntry(key, value.toString()),
//           );
//           Logger.root.fine('''
//             Language : $languageCode  
//             Skill Sub Categories from API : ${_localizedSkillCategoriesResponseList.toString}
//             ''');
//           final SkillCategoriesResponseList skillCategoriesList =
//               SkillCategoriesResponseList.fromJson(
//                   _localizedSkillCategoriesResponseList);
//           return Future.value(skillCategoriesList.list);
//         }
//       }
//       throw CacheException();
//     } catch (exception, stack) {
//       container.read(crashlyticsProvider).recordError(exception, stack);
//       Logger.root.severe('Unable to get skill sub categories list from Cache',
//           exception, stack);
//       throw CacheException();
//     }
//   }

//   Future<void> cacheSkillCategories(
//       List<SkillCategoryResponse> skillCategoriesList,
//       String languageCode) async {
//     try {
//       final SkillCategoriesResponseList skillCategoriesToCache =
//           SkillCategoriesResponseList(list: skillCategoriesList);
//       await sharedPreferences.setString(
//         cachedSkillCategories,
//         json.encode(skillCategoriesToCache),
//       );
//       await sharedPreferences.setString(
//         cachedSkillCategoriesLanguage,
//         json.encode(languageCode),
//       );
//     } catch (exception, stack) {
//       container.read(crashlyticsProvider).recordError(exception, stack);
//       Logger.root
//           .severe('Could not fetch cached skill categories', exception, stack);
//     }
//   }
// }

// final skillCategoriesListLocalProvider =
//     Provider<SkillCategoriesResponseListLocalDataSource>(
//   (ref) {
//     final _skillCategoriesListLocalDataSource =
//         SkillCategoriesResponseListLocalDataSource(
//       sharedPreferences: container.read(cacheProvider).sharedPreferences!,
//     );
//     return _skillCategoriesListLocalDataSource;
//   },
// );
