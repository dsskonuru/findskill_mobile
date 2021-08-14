// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Registration _$RegistrationFromJson(Map<String, dynamic> json) {
  return _Registration.fromJson(json);
}

/// @nodoc
class _$RegistrationTearOff {
  const _$RegistrationTearOff();

  _Registration call(
      {@JsonKey(name: "user_name") required String userName,
      @JsonKey(name: "phone_number") required String phoneNumber,
      required String password,
      @JsonKey(name: "place_name") required String placeName,
      required String district,
      required String state,
      required String country,
      required num latitude,
      required num longitude,
      @JsonKey(name: "terms_accept") required bool hasAcceptedTerms,
      @JsonKey(name: "is_employer") required bool isEmployer,
      @JsonKey(name: "user_language") required LanguageCode primaryLanguage}) {
    return _Registration(
      userName: userName,
      phoneNumber: phoneNumber,
      password: password,
      placeName: placeName,
      district: district,
      state: state,
      country: country,
      latitude: latitude,
      longitude: longitude,
      hasAcceptedTerms: hasAcceptedTerms,
      isEmployer: isEmployer,
      primaryLanguage: primaryLanguage,
    );
  }

  Registration fromJson(Map<String, Object> json) {
    return Registration.fromJson(json);
  }
}

/// @nodoc
const $Registration = _$RegistrationTearOff();

/// @nodoc
mixin _$Registration {
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  num get latitude => throw _privateConstructorUsedError;
  num get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "terms_accept")
  bool get hasAcceptedTerms => throw _privateConstructorUsedError;
  @JsonKey(name: "is_employer")
  bool get isEmployer => throw _privateConstructorUsedError;
  @JsonKey(name: "user_language")
  LanguageCode get primaryLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationCopyWith<Registration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationCopyWith<$Res> {
  factory $RegistrationCopyWith(
          Registration value, $Res Function(Registration) then) =
      _$RegistrationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "user_name") String userName,
      @JsonKey(name: "phone_number") String phoneNumber,
      String password,
      @JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      num latitude,
      num longitude,
      @JsonKey(name: "terms_accept") bool hasAcceptedTerms,
      @JsonKey(name: "is_employer") bool isEmployer,
      @JsonKey(name: "user_language") LanguageCode primaryLanguage});

  $LanguageCodeCopyWith<$Res> get primaryLanguage;
}

/// @nodoc
class _$RegistrationCopyWithImpl<$Res> implements $RegistrationCopyWith<$Res> {
  _$RegistrationCopyWithImpl(this._value, this._then);

  final Registration _value;
  // ignore: unused_field
  final $Res Function(Registration) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? hasAcceptedTerms = freezed,
    Object? isEmployer = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
      hasAcceptedTerms: hasAcceptedTerms == freezed
          ? _value.hasAcceptedTerms
          : hasAcceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmployer: isEmployer == freezed
          ? _value.isEmployer
          : isEmployer // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryLanguage: primaryLanguage == freezed
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
    ));
  }

  @override
  $LanguageCodeCopyWith<$Res> get primaryLanguage {
    return $LanguageCodeCopyWith<$Res>(_value.primaryLanguage, (value) {
      return _then(_value.copyWith(primaryLanguage: value));
    });
  }
}

/// @nodoc
abstract class _$RegistrationCopyWith<$Res>
    implements $RegistrationCopyWith<$Res> {
  factory _$RegistrationCopyWith(
          _Registration value, $Res Function(_Registration) then) =
      __$RegistrationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "user_name") String userName,
      @JsonKey(name: "phone_number") String phoneNumber,
      String password,
      @JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      num latitude,
      num longitude,
      @JsonKey(name: "terms_accept") bool hasAcceptedTerms,
      @JsonKey(name: "is_employer") bool isEmployer,
      @JsonKey(name: "user_language") LanguageCode primaryLanguage});

  @override
  $LanguageCodeCopyWith<$Res> get primaryLanguage;
}

/// @nodoc
class __$RegistrationCopyWithImpl<$Res> extends _$RegistrationCopyWithImpl<$Res>
    implements _$RegistrationCopyWith<$Res> {
  __$RegistrationCopyWithImpl(
      _Registration _value, $Res Function(_Registration) _then)
      : super(_value, (v) => _then(v as _Registration));

  @override
  _Registration get _value => super._value as _Registration;

  @override
  $Res call({
    Object? userName = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? hasAcceptedTerms = freezed,
    Object? isEmployer = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_Registration(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
      hasAcceptedTerms: hasAcceptedTerms == freezed
          ? _value.hasAcceptedTerms
          : hasAcceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmployer: isEmployer == freezed
          ? _value.isEmployer
          : isEmployer // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryLanguage: primaryLanguage == freezed
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageCode,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Registration implements _Registration {
  _$_Registration(
      {@JsonKey(name: "user_name") required this.userName,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      required this.password,
      @JsonKey(name: "place_name") required this.placeName,
      required this.district,
      required this.state,
      required this.country,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: "terms_accept") required this.hasAcceptedTerms,
      @JsonKey(name: "is_employer") required this.isEmployer,
      @JsonKey(name: "user_language") required this.primaryLanguage});

  factory _$_Registration.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationFromJson(json);

  @override
  @JsonKey(name: "user_name")
  final String userName;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String password;
  @override
  @JsonKey(name: "place_name")
  final String placeName;
  @override
  final String district;
  @override
  final String state;
  @override
  final String country;
  @override
  final num latitude;
  @override
  final num longitude;
  @override
  @JsonKey(name: "terms_accept")
  final bool hasAcceptedTerms;
  @override
  @JsonKey(name: "is_employer")
  final bool isEmployer;
  @override
  @JsonKey(name: "user_language")
  final LanguageCode primaryLanguage;

  @override
  String toString() {
    return 'Registration(userName: $userName, phoneNumber: $phoneNumber, password: $password, placeName: $placeName, district: $district, state: $state, country: $country, latitude: $latitude, longitude: $longitude, hasAcceptedTerms: $hasAcceptedTerms, isEmployer: $isEmployer, primaryLanguage: $primaryLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Registration &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.hasAcceptedTerms, hasAcceptedTerms) ||
                const DeepCollectionEquality()
                    .equals(other.hasAcceptedTerms, hasAcceptedTerms)) &&
            (identical(other.isEmployer, isEmployer) ||
                const DeepCollectionEquality()
                    .equals(other.isEmployer, isEmployer)) &&
            (identical(other.primaryLanguage, primaryLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.primaryLanguage, primaryLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(hasAcceptedTerms) ^
      const DeepCollectionEquality().hash(isEmployer) ^
      const DeepCollectionEquality().hash(primaryLanguage);

  @JsonKey(ignore: true)
  @override
  _$RegistrationCopyWith<_Registration> get copyWith =>
      __$RegistrationCopyWithImpl<_Registration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistrationToJson(this);
  }
}

abstract class _Registration implements Registration {
  factory _Registration(
      {@JsonKey(name: "user_name")
          required String userName,
      @JsonKey(name: "phone_number")
          required String phoneNumber,
      required String password,
      @JsonKey(name: "place_name")
          required String placeName,
      required String district,
      required String state,
      required String country,
      required num latitude,
      required num longitude,
      @JsonKey(name: "terms_accept")
          required bool hasAcceptedTerms,
      @JsonKey(name: "is_employer")
          required bool isEmployer,
      @JsonKey(name: "user_language")
          required LanguageCode primaryLanguage}) = _$_Registration;

  factory _Registration.fromJson(Map<String, dynamic> json) =
      _$_Registration.fromJson;

  @override
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  @override
  String get district => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  num get latitude => throw _privateConstructorUsedError;
  @override
  num get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "terms_accept")
  bool get hasAcceptedTerms => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_employer")
  bool get isEmployer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_language")
  LanguageCode get primaryLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationCopyWith<_Registration> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageCode _$LanguageCodeFromJson(Map<String, dynamic> json) {
  return _LanguageCode.fromJson(json);
}

/// @nodoc
class _$LanguageCodeTearOff {
  const _$LanguageCodeTearOff();

  _LanguageCode call({@JsonKey(name: "language") required String lanuageCode}) {
    return _LanguageCode(
      lanuageCode: lanuageCode,
    );
  }

  LanguageCode fromJson(Map<String, Object> json) {
    return LanguageCode.fromJson(json);
  }
}

/// @nodoc
const $LanguageCode = _$LanguageCodeTearOff();

/// @nodoc
mixin _$LanguageCode {
  @JsonKey(name: "language")
  String get lanuageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCodeCopyWith<LanguageCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCodeCopyWith<$Res> {
  factory $LanguageCodeCopyWith(
          LanguageCode value, $Res Function(LanguageCode) then) =
      _$LanguageCodeCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "language") String lanuageCode});
}

/// @nodoc
class _$LanguageCodeCopyWithImpl<$Res> implements $LanguageCodeCopyWith<$Res> {
  _$LanguageCodeCopyWithImpl(this._value, this._then);

  final LanguageCode _value;
  // ignore: unused_field
  final $Res Function(LanguageCode) _then;

  @override
  $Res call({
    Object? lanuageCode = freezed,
  }) {
    return _then(_value.copyWith(
      lanuageCode: lanuageCode == freezed
          ? _value.lanuageCode
          : lanuageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCodeCopyWith<$Res>
    implements $LanguageCodeCopyWith<$Res> {
  factory _$LanguageCodeCopyWith(
          _LanguageCode value, $Res Function(_LanguageCode) then) =
      __$LanguageCodeCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "language") String lanuageCode});
}

/// @nodoc
class __$LanguageCodeCopyWithImpl<$Res> extends _$LanguageCodeCopyWithImpl<$Res>
    implements _$LanguageCodeCopyWith<$Res> {
  __$LanguageCodeCopyWithImpl(
      _LanguageCode _value, $Res Function(_LanguageCode) _then)
      : super(_value, (v) => _then(v as _LanguageCode));

  @override
  _LanguageCode get _value => super._value as _LanguageCode;

  @override
  $Res call({
    Object? lanuageCode = freezed,
  }) {
    return _then(_LanguageCode(
      lanuageCode: lanuageCode == freezed
          ? _value.lanuageCode
          : lanuageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LanguageCode implements _LanguageCode {
  _$_LanguageCode({@JsonKey(name: "language") required this.lanuageCode});

  factory _$_LanguageCode.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageCodeFromJson(json);

  @override
  @JsonKey(name: "language")
  final String lanuageCode;

  @override
  String toString() {
    return 'LanguageCode(lanuageCode: $lanuageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageCode &&
            (identical(other.lanuageCode, lanuageCode) ||
                const DeepCollectionEquality()
                    .equals(other.lanuageCode, lanuageCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lanuageCode);

  @JsonKey(ignore: true)
  @override
  _$LanguageCodeCopyWith<_LanguageCode> get copyWith =>
      __$LanguageCodeCopyWithImpl<_LanguageCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageCodeToJson(this);
  }
}

abstract class _LanguageCode implements LanguageCode {
  factory _LanguageCode(
          {@JsonKey(name: "language") required String lanuageCode}) =
      _$_LanguageCode;

  factory _LanguageCode.fromJson(Map<String, dynamic> json) =
      _$_LanguageCode.fromJson;

  @override
  @JsonKey(name: "language")
  String get lanuageCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCodeCopyWith<_LanguageCode> get copyWith =>
      throw _privateConstructorUsedError;
}
