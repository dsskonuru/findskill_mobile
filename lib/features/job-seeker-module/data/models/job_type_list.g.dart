// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_type_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobTypeList _$_$_JobTypeListFromJson(Map<String, dynamic> json) {
  return _$_JobTypeList(
    contractType: Map<String, String>.from(json['contract_type'] as Map),
    jobType: Map<String, String>.from(json['job_type'] as Map),
  );
}

Map<String, dynamic> _$_$_JobTypeListToJson(_$_JobTypeList instance) =>
    <String, dynamic>{
      'contract_type': instance.contractType,
      'job_type': instance.jobType,
    };
