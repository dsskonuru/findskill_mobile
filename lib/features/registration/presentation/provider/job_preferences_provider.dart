import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../core/providers/firebase_provider.dart';
import '../../../../core/providers/user_actions_provider.dart';
import '../../../../core/services/job_seeker_services.dart';
import '../../../../main.dart';
import '../../../job-seeker-module/data/models/jobseeker_module.dart';

final jobseekerPreferencesProvider =
    ChangeNotifierProvider<JobseekerPreferencesNotifier>(
        (ref) => JobseekerPreferencesNotifier());

class JobseekerPreferencesNotifier extends ChangeNotifier {
  List<String>? _contractTypes;
  List<String>? get contractTypes => _contractTypes;
  set contractTypes(List<String>? contractTypes) {
    _contractTypes = contractTypes;
    notifyListeners();
  }

  List<String>? _jobTypes;
  List<String>? get jobTypes => _jobTypes;
  set jobTypes(List<String>? jobTypes) {
    _jobTypes = jobTypes;
    notifyListeners();
  }

  String? _contractType;
  String? get contractType => _contractType;
  set contractType(String? contractType) {
    _contractType = contractType;
    notifyListeners();
  }

  String? _jobType;
  String? get jobType => _jobType;
  set jobType(String? jobType) {
    _jobType = jobType;
    notifyListeners();
  }

  int? _maximumRate;
  int? get maximumRate => _maximumRate;
  set maximumRate(int? maximumRate) {
    _maximumRate = maximumRate;
    notifyListeners();
  }

  int? _minimumRate;
  int? get minimumRate => _minimumRate;
  set minimumRate(int? minimumRate) {
    _minimumRate = minimumRate;
    notifyListeners();
  }

  Future<bool> fetchJobTypes() async {
    try {
      final JobTypes response =
          await container.read(jobseekerClientProvider).getJobTypes();
      contractTypes = response.contractType.values.toList();
      jobTypes = response.jobType.values.toList();
      return true;
    } catch (exception, stack) {
      Logger.root.severe("Unable to fetch Job types", exception, stack);
      container.read(crashlyticsProvider).recordError(exception, stack);
      return false;
    }
  }

  Future<bool> submit() async {
    try {
      final Preferences preferences = Preferences(
        contractType: contractType!,
        jobType: jobType!,
        minimumRate: minimumRate!.toString(),
        maximumRate: maximumRate!.toString(),
      );
      final PreferencesResponse response =
          await container.read(jobseekerClientProvider).updatePreferences(
                "Token ${container.read(userActionsProvider).loginResponse!.token}",
                preferences,
              );
      Logger.root.fine(response);
      return response.status;
    } catch (exception, stack) {
      Logger.root.severe("Preferences Update failed", exception, stack);
      container.read(crashlyticsProvider).recordError(exception, stack);
      return false;
    }
  }
}
