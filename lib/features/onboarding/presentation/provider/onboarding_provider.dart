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

  String getSampleVideoPath() {
    if (_language == Language.english) {
      return "FindSkill-English-Intro.mp4";
    } else {
      return "FindSkill-Hindi-Intro.mp4";
    }
  }

  String getNoticeVideoPath() {
    if (_language == Language.english) {
      return "FindSkill-English-Notice.mp4";
    } else {
      return "FindSkill-Hindi-Notice.mp4";
    }
  }
}

final languageProvider = ChangeNotifierProvider((ref) => LanguageNotifier());
