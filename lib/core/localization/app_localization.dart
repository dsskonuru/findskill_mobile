import 'dart:convert';

import 'package:findskill/core/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import '../../features/onboarding/presentation/provider/language_provider.dart';
import '../../main.dart';
import '../providers/firebase_provider.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations({required this.locale});

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    try {
      final String _jsonString = await container
          .read(authClientProvider)
          .getLanguageMap(locale.languageCode);
      final Map<String, dynamic> _jsonMap =
          json.decode(_jsonString) as Map<String, dynamic>;
      _localizedStrings = _jsonMap.map(
        (key, value) => MapEntry(key.toString(), value.toString()),
      );
    } catch (exception, stack) {
      container.read(crashlyticsProvider).recordError(exception, stack);
      // In case of exception local asset is used
      final String jsonString =
          await rootBundle.loadString('assets/language/en.json');
      _localizedStrings = json.decode(jsonString) as Map<String, String>;
    }
    return true;
  }

  String translate(String key) {
    if (_localizedStrings[key] == null) {
      Logger.root.severe("$key is not present in translation !");
      return key;
    }
    return _localizedStrings[key]!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final List<String> _supportedLanguageCodes =
        container.read(languageProvider).supportedLanguageCodes;
    return _supportedLanguageCodes.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localization = AppLocalizations(locale: locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
