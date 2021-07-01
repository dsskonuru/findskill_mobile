import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:find_skill/features/onboarding/data/repositories/languages_map_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../../main.dart';
import '../../data/models/language.dart';
import '../../data/repositories/languages_list_repository.dart';

const String cachedLanguage = 'CACHED_LANGUAGE';
const String cachedLanguages = 'CACHED_LANGUAGES';
const String cachedLanguageMap = 'CACHED_LANGUAGE_MAP';

final Language initLanguage = Language(
  code: "en",
  name: "English",
  localName: "English",
);

final LanguagesList initLanguages = LanguagesList(list: [initLanguage]);

final languageProvider = ChangeNotifierProvider((ref) => LanguageNotifier());

class LanguageNotifier extends ChangeNotifier {
  Language _language = initLanguage;
  Language get language => _language;
  set language(Language language) {
    container
        .read(cacheProvider)
        .sharedPreferences!
        .setString(cachedLanguage, json.encode(language.toJson()));
    loadLanguageMap();
    _language = language;
    notifyListeners();
  }

  LanguagesList _languages = initLanguages;
  LanguagesList get languages => _languages;
  set languages(LanguagesList languages) {
    _languages = languages;
    notifyListeners();
  }

  Map<String, String>? _languageMap;
  Map<String, String>? get languageMap => _languageMap;
  set languageMap(Map<String, String>? languageMap) {
    _languageMap = languageMap;
    notifyListeners();
  }

  Future<void> loadLanguages() async {
    final Either<Failure, LanguagesList> _languagesListRunner =
        await container.read(languagesListProvider).getLanguagesList();
    _languagesListRunner.fold(
      (failure) => languages = initLanguages,
      (languagesList) => languages = languagesList,
    );
  }

  Future<void> loadLanguageMap() async {
    final Either<Failure, Map<String, String>> _languageMapRunner =
        await container.read(languageMapProvider).getLanguageMap(language.code);
    _languageMapRunner.fold(
      (failure) async {
        final String jsonString =
            await rootBundle.loadString('assets/language/en.json');
        languageMap = json.decode(jsonString) as Map<String, String>;
      },
      (languageJson) => languageMap = languageJson,
    );
  }

  List<String> get supportedLanguageCodes {
    final List<String> _supportedLanguageCodes =
        languages.list.map((e) => e.code).toList();
    debugPrint(_supportedLanguageCodes.toString()); // !
    return _supportedLanguageCodes;
  }

  Future<List<String>> get languageNamesList async {
    final List<String> _languageNamesList = [];
    for (final Language language in languages.list) {
      _languageNamesList.add(language.name); // TODO: Capitalize Local names
    }
    return _languageNamesList;
  }

  String getSampleVideoPath() {
    // TODO: change according to language
    if (language.code == "en") {
      return "FindSkill-English-Intro.mp4";
    } else {
      return "FindSkill-Hindi-Intro.mp4";
    }
  }

  String getNoticeVideoPath() {
    if (language.code == "en") {
      return "FindSkill-English-Notice.mp4";
    } else {
      return "FindSkill-Hindi-Notice.mp4";
    }
  }
}
