import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel extends User {
  const UserModel({
    required String uid,
    required int mobileNumber,
    required String password,
    required String name,
    required List<String> selectedJobs,
  }) : super(
          uid: uid,
          mobileNumber: mobileNumber,
          password: password,
          name: name,
          selectedJobs: selectedJobs,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
