// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'job_type_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobTypeList _$JobTypeListFromJson(Map<String, dynamic> json) {
  return _JobTypeList.fromJson(json);
}

/// @nodoc
class _$JobTypeListTearOff {
  const _$JobTypeListTearOff();

  _JobTypeList call(
      {@JsonKey(name: "contract_type")
          required Map<String, String> contractType,
      @JsonKey(name: "job_type")
          required Map<String, String> jobType}) {
    return _JobTypeList(
      contractType: contractType,
      jobType: jobType,
    );
  }

  JobTypeList fromJson(Map<String, Object> json) {
    return JobTypeList.fromJson(json);
  }
}

/// @nodoc
const $JobTypeList = _$JobTypeListTearOff();

/// @nodoc
mixin _$JobTypeList {
  @JsonKey(name: "contract_type")
  Map<String, String> get contractType => throw _privateConstructorUsedError;
  @JsonKey(name: "job_type")
  Map<String, String> get jobType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTypeListCopyWith<JobTypeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTypeListCopyWith<$Res> {
  factory $JobTypeListCopyWith(
          JobTypeList value, $Res Function(JobTypeList) then) =
      _$JobTypeListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "contract_type") Map<String, String> contractType,
      @JsonKey(name: "job_type") Map<String, String> jobType});
}

/// @nodoc
class _$JobTypeListCopyWithImpl<$Res> implements $JobTypeListCopyWith<$Res> {
  _$JobTypeListCopyWithImpl(this._value, this._then);

  final JobTypeList _value;
  // ignore: unused_field
  final $Res Function(JobTypeList) _then;

  @override
  $Res call({
    Object? contractType = freezed,
    Object? jobType = freezed,
  }) {
    return _then(_value.copyWith(
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$JobTypeListCopyWith<$Res>
    implements $JobTypeListCopyWith<$Res> {
  factory _$JobTypeListCopyWith(
          _JobTypeList value, $Res Function(_JobTypeList) then) =
      __$JobTypeListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "contract_type") Map<String, String> contractType,
      @JsonKey(name: "job_type") Map<String, String> jobType});
}

/// @nodoc
class __$JobTypeListCopyWithImpl<$Res> extends _$JobTypeListCopyWithImpl<$Res>
    implements _$JobTypeListCopyWith<$Res> {
  __$JobTypeListCopyWithImpl(
      _JobTypeList _value, $Res Function(_JobTypeList) _then)
      : super(_value, (v) => _then(v as _JobTypeList));

  @override
  _JobTypeList get _value => super._value as _JobTypeList;

  @override
  $Res call({
    Object? contractType = freezed,
    Object? jobType = freezed,
  }) {
    return _then(_JobTypeList(
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobTypeList implements _JobTypeList {
  _$_JobTypeList(
      {@JsonKey(name: "contract_type") required this.contractType,
      @JsonKey(name: "job_type") required this.jobType});

  factory _$_JobTypeList.fromJson(Map<String, dynamic> json) =>
      _$_$_JobTypeListFromJson(json);

  @override
  @JsonKey(name: "contract_type")
  final Map<String, String> contractType;
  @override
  @JsonKey(name: "job_type")
  final Map<String, String> jobType;

  @override
  String toString() {
    return 'JobTypeList(contractType: $contractType, jobType: $jobType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobTypeList &&
            (identical(other.contractType, contractType) ||
                const DeepCollectionEquality()
                    .equals(other.contractType, contractType)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality().equals(other.jobType, jobType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contractType) ^
      const DeepCollectionEquality().hash(jobType);

  @JsonKey(ignore: true)
  @override
  _$JobTypeListCopyWith<_JobTypeList> get copyWith =>
      __$JobTypeListCopyWithImpl<_JobTypeList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobTypeListToJson(this);
  }
}

abstract class _JobTypeList implements JobTypeList {
  factory _JobTypeList(
      {@JsonKey(name: "contract_type")
          required Map<String, String> contractType,
      @JsonKey(name: "job_type")
          required Map<String, String> jobType}) = _$_JobTypeList;

  factory _JobTypeList.fromJson(Map<String, dynamic> json) =
      _$_JobTypeList.fromJson;

  @override
  @JsonKey(name: "contract_type")
  Map<String, String> get contractType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "job_type")
  Map<String, String> get jobType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobTypeListCopyWith<_JobTypeList> get copyWith =>
      throw _privateConstructorUsedError;
}
