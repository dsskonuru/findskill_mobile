// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_type_list.freezed.dart';
part 'job_type_list.g.dart';

@freezed
class JobTypeList with _$JobTypeList {
  @JsonSerializable(explicitToJson: true)
  factory JobTypeList({
    @JsonKey(name: "contract_type") required Map<String,String> contractType,
    @JsonKey(name: "job_type") required Map<String,String> jobType,
  }) = _JobTypeList;
  factory JobTypeList.fromJson(Map<String, dynamic> json) =>
      _$JobTypeListFromJson(json);
}
