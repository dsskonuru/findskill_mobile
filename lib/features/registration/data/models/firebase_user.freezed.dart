// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firebase_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseUser _$FirebaseUserFromJson(Map<String, dynamic> json) {
  return _FirebaseUser.fromJson(json);
}

/// @nodoc
class _$FirebaseUserTearOff {
  const _$FirebaseUserTearOff();

  _FirebaseUser call({required String phoneNumber, required String uid}) {
    return _FirebaseUser(
      phoneNumber: phoneNumber,
      uid: uid,
    );
  }

  FirebaseUser fromJson(Map<String, Object> json) {
    return FirebaseUser.fromJson(json);
  }
}

/// @nodoc
const $FirebaseUser = _$FirebaseUserTearOff();

/// @nodoc
mixin _$FirebaseUser {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseUserCopyWith<FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUserCopyWith(
          FirebaseUser value, $Res Function(FirebaseUser) then) =
      _$FirebaseUserCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String uid});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res> implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  final FirebaseUser _value;
  // ignore: unused_field
  final $Res Function(FirebaseUser) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseUserCopyWith<$Res>
    implements $FirebaseUserCopyWith<$Res> {
  factory _$FirebaseUserCopyWith(
          _FirebaseUser value, $Res Function(_FirebaseUser) then) =
      __$FirebaseUserCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber, String uid});
}

/// @nodoc
class __$FirebaseUserCopyWithImpl<$Res> extends _$FirebaseUserCopyWithImpl<$Res>
    implements _$FirebaseUserCopyWith<$Res> {
  __$FirebaseUserCopyWithImpl(
      _FirebaseUser _value, $Res Function(_FirebaseUser) _then)
      : super(_value, (v) => _then(v as _FirebaseUser));

  @override
  _FirebaseUser get _value => super._value as _FirebaseUser;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? uid = freezed,
  }) {
    return _then(_FirebaseUser(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FirebaseUser implements _FirebaseUser {
  _$_FirebaseUser({required this.phoneNumber, required this.uid});

  factory _$_FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$_$_FirebaseUserFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String uid;

  @override
  String toString() {
    return 'FirebaseUser(phoneNumber: $phoneNumber, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseUser &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$FirebaseUserCopyWith<_FirebaseUser> get copyWith =>
      __$FirebaseUserCopyWithImpl<_FirebaseUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FirebaseUserToJson(this);
  }
}

abstract class _FirebaseUser implements FirebaseUser {
  factory _FirebaseUser({required String phoneNumber, required String uid}) =
      _$_FirebaseUser;

  factory _FirebaseUser.fromJson(Map<String, dynamic> json) =
      _$_FirebaseUser.fromJson;

  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseUserCopyWith<_FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}
