import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider =
    ChangeNotifierProvider<DashboardNotifier>((ref) => DashboardNotifier());

class DashboardNotifier extends ChangeNotifier {
  String? _firstname = "John Doe";
  String? get firstname => _firstname;
  set firstname(String? firstname) {
    _firstname = firstname;
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

  Future<void> fetchProfile() async {
    // TODO: ADD TOKEN POST LOGIN
    // try {
    //   final JobseekerProfileResponse JobTypes =
    //       await container.read(jobseekerClientProvider).profile("");
    // } catch (e, s) {}
    // if (contractTypes != null &&
    //     contractTypes!.isNotEmpty &&
    //     jobTypes != null &&
    //     jobTypes!.isNotEmpty) {
    //   return true;
    // } else {
    //   return false;
    // }
  }
}
