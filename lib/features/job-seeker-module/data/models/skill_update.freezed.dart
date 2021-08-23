// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'skill_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Skills _$SkillsFromJson(Map<String, dynamic> json) {
  return _Skills.fromJson(json);
}

/// @nodoc
class _$SkillsTearOff {
  const _$SkillsTearOff();

  _Skills call({required List<String> skills}) {
    return _Skills(
      skills: skills,
    );
  }

  Skills fromJson(Map<String, Object> json) {
    return Skills.fromJson(json);
  }
}

/// @nodoc
const $Skills = _$SkillsTearOff();

/// @nodoc
mixin _$Skills {
  List<String> get skills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsCopyWith<Skills> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsCopyWith<$Res> {
  factory $SkillsCopyWith(Skills value, $Res Function(Skills) then) =
      _$SkillsCopyWithImpl<$Res>;
  $Res call({List<String> skills});
}

/// @nodoc
class _$SkillsCopyWithImpl<$Res> implements $SkillsCopyWith<$Res> {
  _$SkillsCopyWithImpl(this._value, this._then);

  final Skills _value;
  // ignore: unused_field
  final $Res Function(Skills) _then;

  @override
  $Res call({
    Object? skills = freezed,
  }) {
    return _then(_value.copyWith(
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SkillsCopyWith<$Res> implements $SkillsCopyWith<$Res> {
  factory _$SkillsCopyWith(_Skills value, $Res Function(_Skills) then) =
      __$SkillsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> skills});
}

/// @nodoc
class __$SkillsCopyWithImpl<$Res> extends _$SkillsCopyWithImpl<$Res>
    implements _$SkillsCopyWith<$Res> {
  __$SkillsCopyWithImpl(_Skills _value, $Res Function(_Skills) _then)
      : super(_value, (v) => _then(v as _Skills));

  @override
  _Skills get _value => super._value as _Skills;

  @override
  $Res call({
    Object? skills = freezed,
  }) {
    return _then(_Skills(
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Skills implements _Skills {
  _$_Skills({required this.skills});

  factory _$_Skills.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillsFromJson(json);

  @override
  final List<String> skills;

  @override
  String toString() {
    return 'Skills(skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Skills &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(skills);

  @JsonKey(ignore: true)
  @override
  _$SkillsCopyWith<_Skills> get copyWith =>
      __$SkillsCopyWithImpl<_Skills>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillsToJson(this);
  }
}

abstract class _Skills implements Skills {
  factory _Skills({required List<String> skills}) = _$_Skills;

  factory _Skills.fromJson(Map<String, dynamic> json) = _$_Skills.fromJson;

  @override
  List<String> get skills => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillsCopyWith<_Skills> get copyWith => throw _privateConstructorUsedError;
}

SkillsResponse _$SkillsResponseFromJson(Map<String, dynamic> json) {
  return _SkillsResponse.fromJson(json);
}

/// @nodoc
class _$SkillsResponseTearOff {
  const _$SkillsResponseTearOff();

  _SkillsResponse call(
      {required bool status,
      @JsonKey(name: "response_data") required String responseData}) {
    return _SkillsResponse(
      status: status,
      responseData: responseData,
    );
  }

  SkillsResponse fromJson(Map<String, Object> json) {
    return SkillsResponse.fromJson(json);
  }
}

/// @nodoc
const $SkillsResponse = _$SkillsResponseTearOff();

/// @nodoc
mixin _$SkillsResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "response_data")
  String get responseData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsResponseCopyWith<SkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsResponseCopyWith<$Res> {
  factory $SkillsResponseCopyWith(
          SkillsResponse value, $Res Function(SkillsResponse) then) =
      _$SkillsResponseCopyWithImpl<$Res>;
  $Res call({bool status, @JsonKey(name: "response_data") String responseData});
}

/// @nodoc
class _$SkillsResponseCopyWithImpl<$Res>
    implements $SkillsResponseCopyWith<$Res> {
  _$SkillsResponseCopyWithImpl(this._value, this._then);

  final SkillsResponse _value;
  // ignore: unused_field
  final $Res Function(SkillsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SkillsResponseCopyWith<$Res>
    implements $SkillsResponseCopyWith<$Res> {
  factory _$SkillsResponseCopyWith(
          _SkillsResponse value, $Res Function(_SkillsResponse) then) =
      __$SkillsResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool status, @JsonKey(name: "response_data") String responseData});
}

/// @nodoc
class __$SkillsResponseCopyWithImpl<$Res>
    extends _$SkillsResponseCopyWithImpl<$Res>
    implements _$SkillsResponseCopyWith<$Res> {
  __$SkillsResponseCopyWithImpl(
      _SkillsResponse _value, $Res Function(_SkillsResponse) _then)
      : super(_value, (v) => _then(v as _SkillsResponse));

  @override
  _SkillsResponse get _value => super._value as _SkillsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_SkillsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SkillsResponse implements _SkillsResponse {
  _$_SkillsResponse(
      {required this.status,
      @JsonKey(name: "response_data") required this.responseData});

  factory _$_SkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillsResponseFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: "response_data")
  final String responseData;

  @override
  String toString() {
    return 'SkillsResponse(status: $status, responseData: $responseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillsResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.responseData, responseData) ||
                const DeepCollectionEquality()
                    .equals(other.responseData, responseData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(responseData);

  @JsonKey(ignore: true)
  @override
  _$SkillsResponseCopyWith<_SkillsResponse> get copyWith =>
      __$SkillsResponseCopyWithImpl<_SkillsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillsResponseToJson(this);
  }
}

abstract class _SkillsResponse implements SkillsResponse {
  factory _SkillsResponse(
          {required bool status,
          @JsonKey(name: "response_data") required String responseData}) =
      _$_SkillsResponse;

  factory _SkillsResponse.fromJson(Map<String, dynamic> json) =
      _$_SkillsResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "response_data")
  String get responseData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillsResponseCopyWith<_SkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
