import 'package:findskill/core/services/job_seeker_services.dart';
import 'package:findskill/features/job-seeker-module/data/models/job_type_list.dart';
import 'package:findskill/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final jobseekerPreferenceChoiceProvider =
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

  String? _selectedContractType;
  String? get selectedContractType => _selectedContractType;
  set selectedContractType(String? selectedContractType) {
    _selectedContractType = selectedContractType;
    notifyListeners();
  }

  String? _selectedJobType;
  String? get selectedJobType => _selectedJobType;
  set selectedJobType(String? selectedJobType) {
    _selectedJobType = selectedJobType;
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

  Future<bool> fetchJobTypeList() async {
    final JobTypeList jobTypeList =
        await container.read(jobseekerClientProvider).getJobTypeList();
    contractTypes = jobTypeList.contractType.values.toList();
    jobTypes = jobTypeList.jobType.values.toList();
    if (contractTypes != null &&
        contractTypes!.isNotEmpty &&
        jobTypes != null &&
        jobTypes!.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> submit() async {
    // TODO: Call the submit API
    // container.read(jobseekerClientProvider).updateSkills(token, skills);
  }
}
