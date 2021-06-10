import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String uid;
  final int mobileNumber;
  final String password;
  final String name;
  final List<String> selectedJobs;

  const User({
    required this.uid,
    required this.mobileNumber,
    required this.password,
    required this.name,
    required this.selectedJobs,
  });

  @override
  List<Object?> get props => [
        uid,
        mobileNumber,
        password,
        name,
        selectedJobs,
      ];
}