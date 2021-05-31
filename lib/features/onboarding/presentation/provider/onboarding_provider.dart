
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Language {
  English,
  Urdu,
  Hindi,
  Telugu,
  Tamil,
  Malyalam,
  Konkan,
}


class LanguageNotifier extends ChangeNotifier {
  Language _language = Language.English;
  String get name => _language.toString();
  void setLanguage(String language) {
    _language = Language.values.firstWhere((e) => e.toString() == language);
    notifyListeners();
  }

  List<String> _languages = Language.values.map((e) => e.toString()).toList();
  List<String> get languages => _languages;
}

final languageProvider = ChangeNotifierProvider((ref) => LanguageNotifier());