import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Language {
  english,
  hindi,
}

class LanguageNotifier extends ChangeNotifier {
  Language _language = Language.english;
  String get name => _language.toString();
  void setLanguage(String language) {
    _language = Language.values.firstWhere((e) => e.toString() == language);
    notifyListeners();
  }

  final List<String> _languages =
      Language.values.map((e) => e.toString()).toList();
  List<String> get languages => _languages;
}

final languageProvider = ChangeNotifierProvider((ref) => LanguageNotifier());
