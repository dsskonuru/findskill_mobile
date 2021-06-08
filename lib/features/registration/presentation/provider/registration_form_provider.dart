import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationFormProvider =
    ChangeNotifierProvider.autoDispose<RegistrationFormNotifier>(
        (ref) => RegistrationFormNotifier());

class RegistrationFormNotifier extends ChangeNotifier {
  int? _mobileNumber;
  String? _password;
  String? _name;
  String? _cityName;
  List<String> _selectedJobs = [];
  bool jobMenuPressed = false;
  final Map<String, List<String>> skillsList = skillsMap;

  int? get mobileNumber => _mobileNumber;
  String? get smsCode => _password;
  String? get codeSent => _name;
  String? get phoneNo => _cityName;
  List<String> get selectedJobs => _selectedJobs;

  void setMobileNo({required int number}) {
    _mobileNumber = number;
    notifyListeners();
  }

  void setPassword({required String password}) {
    _password = password;
    notifyListeners();
  }

  void setName({required String name}) {
    _name = name;
    notifyListeners();
  }

  void setCityName({required String cityName}) {
    _cityName = cityName;
    notifyListeners();
  }

  void toggleJobMenuPressed() {
    if (jobMenuPressed) {
      jobMenuPressed = false;
    } else {
      jobMenuPressed = true;
    }
    debugPrint(jobMenuPressed.toString());
    notifyListeners();
  }

  void addTags(List<String> selectedChips) {
    _selectedJobs = selectedChips;
    notifyListeners();
  }
}

const skillsMap = {
  "Arts": [
    "Actor",
    "Architect",
    "Art Appraiser",
    "Art Auctioneer",
    "Artist",
    "Museum Jobs",
    "Music Conductor"
  ],
  "Business": [
    "Accountant",
    "Administrative Assistant/Secretary",
    "Advertising",
    "Chief Operating Officer",
    "City Manager",
    "Consultant",
    "Financial Advisor",
    "Fundraiser",
    "Government Jobs",
    "Human Resources",
    "Insurance Agent",
    "Investment Banker",
    "Lawyer",
    "Management",
    "Market Research Analyst"
  ],
  "Education": [
    "College Professor",
    "Music Teacher",
    "School Jobs",
    "Substitute Teacher",
    "Teacher",
    "Teaching Abroad",
    "Teaching Online"
  ],
  "Law Enforcement": [
    "Border Control Agent",
    "Correctional Officer",
    "Criminal Justice",
    "DCIS Special Agent",
    "FBI Special Agent",
    "Federal Law Enforcement",
    "Fish and Game Warden",
    "ICE Agent",
    "K-9 Police Officer",
    "Police Dispatcher",
    "Police Officer",
    "State Trooper",
    "Uniformed Secret Service Officer"
  ],
  "Media": [
    "Book Publishing",
    "Freelance Writer",
    "Public Relations",
    "Web Developer",
    "Writer/Editor"
  ],
  "Medical": [
    "Doctor",
    "Forensic Psychologist",
    "Hospitalist",
    "Mental Health Counselor",
    "Nurse",
    "Orthodontist",
    "Paramedic",
    "Pediatrician",
    "Physician Assistant",
    "Psychiatrist",
    "Psychologist",
    "Social Worker",
    "Veterinarian"
  ],
  "Service Industry": [
    "Bank Teller",
    "Call Center",
    "Hair Stylist",
    "Personal Fitness Trainer",
    "Retail",
    "Sales",
    "Waiter",
    "Wedding Planner"
  ],
  "Technology": [
    "Back End Developer",
    "Computer Programmer",
    "Computer Systems Administrator",
    "Database Administrator",
    "Programmer",
    "Software Developer",
    "Web Developer"
  ]
};
