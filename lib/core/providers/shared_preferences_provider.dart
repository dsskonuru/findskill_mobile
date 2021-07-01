import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheNotifier extends ChangeNotifier {
  SharedPreferences? _sharedPreferences;
  SharedPreferences? get sharedPreferences => _sharedPreferences;
  set sharedPreferences(SharedPreferences? sharedPreferences) {
    _sharedPreferences = sharedPreferences;
    notifyListeners();
  }
}

final cacheProvider =
    ChangeNotifierProvider<CacheNotifier>((ref) => CacheNotifier());
