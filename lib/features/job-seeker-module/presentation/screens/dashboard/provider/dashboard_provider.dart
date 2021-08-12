import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider =
    ChangeNotifierProvider<DashboardNotifier>((ref) => DashboardNotifier());

class DashboardNotifier extends ChangeNotifier {
  String? _username = "John Doe";
  String? get username => _username;
  set username(String? username) {
    _username = username;
    notifyListeners();
  }

  String? _profileViews = "250";
  String? get profileViews => _profileViews;
  set profileViews(String? profileViews) {
    _profileViews = profileViews;
    notifyListeners();
  }

  String? _profileSaves = "10";
  String? get profileSaves => _profileSaves;
  set profileSaves(String? profileSaves) {
    _profileSaves = profileSaves;
    notifyListeners();
  }

  String? _city = "Gurgaon";
  String? get city => _city;
  set city(String? city) {
    _city = city;
    notifyListeners();
  }

  String? _phoneNumber = "+919876543210";
  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  
}