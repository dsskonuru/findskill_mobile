// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) {
  return _UserLogin.fromJson(json);
}

/// @nodoc
class _$UserLoginTearOff {
  const _$UserLoginTearOff();

  _UserLogin call(
      {@JsonKey(name: "phone_number") required String phoneNumber,
      required String password}) {
    return _UserLogin(
      phoneNumber: phoneNumber,
      password: password,
    );
  }

  UserLogin fromJson(Map<String, Object> json) {
    return UserLogin.fromJson(json);
  }
}

/// @nodoc
const $UserLogin = _$UserLoginTearOff();

/// @nodoc
mixin _$UserLogin {
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginCopyWith<UserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginCopyWith<$Res> {
  factory $UserLoginCopyWith(UserLogin value, $Res Function(UserLogin) then) =
      _$UserLoginCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber, String password});
}

/// @nodoc
class _$UserLoginCopyWithImpl<$Res> implements $UserLoginCopyWith<$Res> {
  _$UserLoginCopyWithImpl(this._value, this._then);

  final UserLogin _value;
  // ignore: unused_field
  final $Res Function(UserLogin) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserLoginCopyWith<$Res> implements $UserLoginCopyWith<$Res> {
  factory _$UserLoginCopyWith(
          _UserLogin value, $Res Function(_UserLogin) then) =
      __$UserLoginCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber, String password});
}

/// @nodoc
class __$UserLoginCopyWithImpl<$Res> extends _$UserLoginCopyWithImpl<$Res>
    implements _$UserLoginCopyWith<$Res> {
  __$UserLoginCopyWithImpl(_UserLogin _value, $Res Function(_UserLogin) _then)
      : super(_value, (v) => _then(v as _UserLogin));

  @override
  _UserLogin get _value => super._value as _UserLogin;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_UserLogin(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserLogin implements _UserLogin {
  _$_UserLogin(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      required this.password});

  factory _$_UserLogin.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLoginFromJson(json);

  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLogin(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLogin &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$UserLoginCopyWith<_UserLogin> get copyWith =>
      __$UserLoginCopyWithImpl<_UserLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLoginToJson(this);
  }
}

abstract class _UserLogin implements UserLogin {
  factory _UserLogin(
      {@JsonKey(name: "phone_number") required String phoneNumber,
      required String password}) = _$_UserLogin;

  factory _UserLogin.fromJson(Map<String, dynamic> json) =
      _$_UserLogin.fromJson;

  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLoginCopyWith<_UserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
class _$LoginResponseTearOff {
  const _$LoginResponseTearOff();

  _LoginResponse call(
      {required String token,
      @JsonKey(name: "phone_number") required String phoneNumber,
      @JsonKey(name: "user_id") required String userId,
      @JsonKey(name: "is_logged_in") required bool isLoggedIn,
      @JsonKey(name: "user_name") required String userName,
      @JsonKey(name: "place_name") required String placeName,
      required String gender}) {
    return _LoginResponse(
      token: token,
      phoneNumber: phoneNumber,
      userId: userId,
      isLoggedIn: isLoggedIn,
      userName: userName,
      placeName: placeName,
      gender: gender,
    );
  }

  LoginResponse fromJson(Map<String, Object> json) {
    return LoginResponse.fromJson(json);
  }
}

/// @nodoc
const $LoginResponse = _$LoginResponseTearOff();

/// @nodoc
mixin _$LoginResponse {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_logged_in")
  bool get isLoggedIn => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res>;
  $Res call(
      {String token,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "is_logged_in") bool isLoggedIn,
      @JsonKey(name: "user_name") String userName,
      @JsonKey(name: "place_name") String placeName,
      String gender});
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  final LoginResponse _value;
  // ignore: unused_field
  final $Res Function(LoginResponse) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? userId = freezed,
    Object? isLoggedIn = freezed,
    Object? userName = freezed,
    Object? placeName = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(
          _LoginResponse value, $Res Function(_LoginResponse) then) =
      __$LoginResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "is_logged_in") bool isLoggedIn,
      @JsonKey(name: "user_name") String userName,
      @JsonKey(name: "place_name") String placeName,
      String gender});
}

/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(
      _LoginResponse _value, $Res Function(_LoginResponse) _then)
      : super(_value, (v) => _then(v as _LoginResponse));

  @override
  _LoginResponse get _value => super._value as _LoginResponse;

  @override
  $Res call({
    Object? token = freezed,
    Object? phoneNumber = freezed,
    Object? userId = freezed,
    Object? isLoggedIn = freezed,
    Object? userName = freezed,
    Object? placeName = freezed,
    Object? gender = freezed,
  }) {
    return _then(_LoginResponse(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoginResponse implements _LoginResponse {
  _$_LoginResponse(
      {required this.token,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "is_logged_in") required this.isLoggedIn,
      @JsonKey(name: "user_name") required this.userName,
      @JsonKey(name: "place_name") required this.placeName,
      required this.gender});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResponseFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "is_logged_in")
  final bool isLoggedIn;
  @override
  @JsonKey(name: "user_name")
  final String userName;
  @override
  @JsonKey(name: "place_name")
  final String placeName;
  @override
  final String gender;

  @override
  String toString() {
    return 'LoginResponse(token: $token, phoneNumber: $phoneNumber, userId: $userId, isLoggedIn: $isLoggedIn, userName: $userName, placeName: $placeName, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponse &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isLoggedIn, isLoggedIn)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isLoggedIn) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResponseToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse(
      {required String token,
      @JsonKey(name: "phone_number") required String phoneNumber,
      @JsonKey(name: "user_id") required String userId,
      @JsonKey(name: "is_logged_in") required bool isLoggedIn,
      @JsonKey(name: "user_name") required String userName,
      @JsonKey(name: "place_name") required String placeName,
      required String gender}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_logged_in")
  bool get isLoggedIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
