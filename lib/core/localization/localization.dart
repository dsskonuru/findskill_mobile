import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  var _localizedValues;

  Future<void> load() async {
    String jsonStringValues = await rootBundle.loadString('lang/${locale.languageCode}.json');
    var mappedJson = json.decode(jsonStringValues);
    _localizedValues = mappedJson.map((key, value) => MapEntry(key, value.toString()));
    //var response = (await Dio().get('http://198.23.196.159:8000/api/auth/static-string?language=${locale.languageCode}')).data;
    //_localizedValues = response.map((key, value) => MapEntry(key, value.toString()));
  }

  dynamic translate(String key) {
    return _localizedValues[key];
  }

  // static member to have simple access to the delegate from Material App
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _DemoLocalizationsDelegate();
}

class _DemoLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'hi'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localization = AppLocalizations(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}

class LanguageCode {
  final String languageCode;

  LanguageCode(this.languageCode);
}

const String LAGUAGE_CODE = 'languageCode';

Future<Locale> setLocale(String languageCode) async {
  
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  print("set locale $languageCode");
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {

  switch (languageCode) {
    case 'Language.english':
      return Locale('en', 'US');
    case 'Language.hindi': //'hindi':
      return Locale('hi', "IN");
    default:
      return Locale('en', 'US');
  }
}
