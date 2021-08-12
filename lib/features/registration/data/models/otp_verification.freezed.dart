// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'otp_verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpVerification _$OtpVerificationFromJson(Map<String, dynamic> json) {
  return _OtpVerification.fromJson(json);
}

/// @nodoc
class _$OtpVerificationTearOff {
  const _$OtpVerificationTearOff();

  _OtpVerification call(
      {@JsonKey(name: "phone_number") required String phoneNumber,
      @JsonKey(name: "is_verified") required bool isVerified}) {
    return _OtpVerification(
      phoneNumber: phoneNumber,
      isVerified: isVerified,
    );
  }

  OtpVerification fromJson(Map<String, Object> json) {
    return OtpVerification.fromJson(json);
  }
}

/// @nodoc
const $OtpVerification = _$OtpVerificationTearOff();

/// @nodoc
mixin _$OtpVerification {
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  bool get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpVerificationCopyWith<OtpVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationCopyWith<$Res> {
  factory $OtpVerificationCopyWith(
          OtpVerification value, $Res Function(OtpVerification) then) =
      _$OtpVerificationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "is_verified") bool isVerified});
}

/// @nodoc
class _$OtpVerificationCopyWithImpl<$Res>
    implements $OtpVerificationCopyWith<$Res> {
  _$OtpVerificationCopyWithImpl(this._value, this._then);

  final OtpVerification _value;
  // ignore: unused_field
  final $Res Function(OtpVerification) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$OtpVerificationCopyWith<$Res>
    implements $OtpVerificationCopyWith<$Res> {
  factory _$OtpVerificationCopyWith(
          _OtpVerification value, $Res Function(_OtpVerification) then) =
      __$OtpVerificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "is_verified") bool isVerified});
}

/// @nodoc
class __$OtpVerificationCopyWithImpl<$Res>
    extends _$OtpVerificationCopyWithImpl<$Res>
    implements _$OtpVerificationCopyWith<$Res> {
  __$OtpVerificationCopyWithImpl(
      _OtpVerification _value, $Res Function(_OtpVerification) _then)
      : super(_value, (v) => _then(v as _OtpVerification));

  @override
  _OtpVerification get _value => super._value as _OtpVerification;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_OtpVerification(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OtpVerification implements _OtpVerification {
  _$_OtpVerification(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "is_verified") required this.isVerified});

  factory _$_OtpVerification.fromJson(Map<String, dynamic> json) =>
      _$_$_OtpVerificationFromJson(json);

  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "is_verified")
  final bool isVerified;

  @override
  String toString() {
    return 'OtpVerification(phoneNumber: $phoneNumber, isVerified: $isVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtpVerification &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(isVerified);

  @JsonKey(ignore: true)
  @override
  _$OtpVerificationCopyWith<_OtpVerification> get copyWith =>
      __$OtpVerificationCopyWithImpl<_OtpVerification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OtpVerificationToJson(this);
  }
}

abstract class _OtpVerification implements OtpVerification {
  factory _OtpVerification(
          {@JsonKey(name: "phone_number") required String phoneNumber,
          @JsonKey(name: "is_verified") required bool isVerified}) =
      _$_OtpVerification;

  factory _OtpVerification.fromJson(Map<String, dynamic> json) =
      _$_OtpVerification.fromJson;

  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_verified")
  bool get isVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OtpVerificationCopyWith<_OtpVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
class _$AuthResponseTearOff {
  const _$AuthResponseTearOff();

  _AuthResponse call({String? status, required String detail}) {
    return _AuthResponse(
      status: status,
      detail: detail,
    );
  }

  AuthResponse fromJson(Map<String, Object> json) {
    return AuthResponse.fromJson(json);
  }
}

/// @nodoc
const $AuthResponse = _$AuthResponseTearOff();

/// @nodoc
mixin _$AuthResponse {
  String? get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res>;
  $Res call({String? status, String detail});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  final AuthResponse _value;
  // ignore: unused_field
  final $Res Function(AuthResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(
          _AuthResponse value, $Res Function(_AuthResponse) then) =
      __$AuthResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String detail});
}

/// @nodoc
class __$AuthResponseCopyWithImpl<$Res> extends _$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(
      _AuthResponse _value, $Res Function(_AuthResponse) _then)
      : super(_value, (v) => _then(v as _AuthResponse));

  @override
  _AuthResponse get _value => super._value as _AuthResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? detail = freezed,
  }) {
    return _then(_AuthResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AuthResponse implements _AuthResponse {
  _$_AuthResponse({this.status, required this.detail});

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthResponseFromJson(json);

  @override
  final String? status;
  @override
  final String detail;

  @override
  String toString() {
    return 'AuthResponse(status: $status, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail);

  @JsonKey(ignore: true)
  @override
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthResponseToJson(this);
  }
}

abstract class _AuthResponse implements AuthResponse {
  factory _AuthResponse({String? status, required String detail}) =
      _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
