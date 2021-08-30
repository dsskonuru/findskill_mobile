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
      {@JsonKey(name: "first_name") required String firstName,
      @JsonKey(name: "last_name") required String lastName,
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
      @JsonKey(name: "is_jobseeker") required bool isJobseeker,
      @JsonKey(name: "user_language") required LanguageCode primaryLanguage}) {
    return _Registration(
      firstName: firstName,
      lastName: lastName,
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
      isJobseeker: isJobseeker,
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
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
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
  @JsonKey(name: "is_jobseeker")
  bool get isJobseeker => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
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
      @JsonKey(name: "is_jobseeker") bool isJobseeker,
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
    Object? firstName = freezed,
    Object? lastName = freezed,
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
    Object? isJobseeker = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
      isJobseeker: isJobseeker == freezed
          ? _value.isJobseeker
          : isJobseeker // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String lastName,
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
      @JsonKey(name: "is_jobseeker") bool isJobseeker,
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
    Object? firstName = freezed,
    Object? lastName = freezed,
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
    Object? isJobseeker = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_Registration(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
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
      isJobseeker: isJobseeker == freezed
          ? _value.isJobseeker
          : isJobseeker // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
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
      @JsonKey(name: "is_jobseeker") required this.isJobseeker,
      @JsonKey(name: "user_language") required this.primaryLanguage});

  factory _$_Registration.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String lastName;
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
  @JsonKey(name: "is_jobseeker")
  final bool isJobseeker;
  @override
  @JsonKey(name: "user_language")
  final LanguageCode primaryLanguage;

  @override
  String toString() {
    return 'Registration(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, password: $password, placeName: $placeName, district: $district, state: $state, country: $country, latitude: $latitude, longitude: $longitude, hasAcceptedTerms: $hasAcceptedTerms, isEmployer: $isEmployer, isJobseeker: $isJobseeker, primaryLanguage: $primaryLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Registration &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
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
            (identical(other.isJobseeker, isJobseeker) ||
                const DeepCollectionEquality()
                    .equals(other.isJobseeker, isJobseeker)) &&
            (identical(other.primaryLanguage, primaryLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.primaryLanguage, primaryLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
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
      const DeepCollectionEquality().hash(isJobseeker) ^
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
      {@JsonKey(name: "first_name")
          required String firstName,
      @JsonKey(name: "last_name")
          required String lastName,
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
      @JsonKey(name: "is_jobseeker")
          required bool isJobseeker,
      @JsonKey(name: "user_language")
          required LanguageCode primaryLanguage}) = _$_Registration;

  factory _Registration.fromJson(Map<String, dynamic> json) =
      _$_Registration.fromJson;

  @override
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "last_name")
  String get lastName => throw _privateConstructorUsedError;
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
  @JsonKey(name: "is_jobseeker")
  bool get isJobseeker => throw _privateConstructorUsedError;
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

UserLocation _$UserLocationFromJson(Map<String, dynamic> json) {
  return _UserLocation.fromJson(json);
}

/// @nodoc
class _$UserLocationTearOff {
  const _$UserLocationTearOff();

  _UserLocation call(
      {@JsonKey(name: "place_name") required String placeName,
      required String district,
      required String state,
      required String country,
      required double latitude,
      required double longitude,
      required String countryCode}) {
    return _UserLocation(
      placeName: placeName,
      district: district,
      state: state,
      country: country,
      latitude: latitude,
      longitude: longitude,
      countryCode: countryCode,
    );
  }

  UserLocation fromJson(Map<String, Object> json) {
    return UserLocation.fromJson(json);
  }
}

/// @nodoc
const $UserLocation = _$UserLocationTearOff();

/// @nodoc
mixin _$UserLocation {
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationCopyWith<UserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationCopyWith<$Res> {
  factory $UserLocationCopyWith(
          UserLocation value, $Res Function(UserLocation) then) =
      _$UserLocationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      double latitude,
      double longitude,
      String countryCode});
}

/// @nodoc
class _$UserLocationCopyWithImpl<$Res> implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(this._value, this._then);

  final UserLocation _value;
  // ignore: unused_field
  final $Res Function(UserLocation) _then;

  @override
  $Res call({
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
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
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserLocationCopyWith<$Res>
    implements $UserLocationCopyWith<$Res> {
  factory _$UserLocationCopyWith(
          _UserLocation value, $Res Function(_UserLocation) then) =
      __$UserLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      double latitude,
      double longitude,
      String countryCode});
}

/// @nodoc
class __$UserLocationCopyWithImpl<$Res> extends _$UserLocationCopyWithImpl<$Res>
    implements _$UserLocationCopyWith<$Res> {
  __$UserLocationCopyWithImpl(
      _UserLocation _value, $Res Function(_UserLocation) _then)
      : super(_value, (v) => _then(v as _UserLocation));

  @override
  _UserLocation get _value => super._value as _UserLocation;

  @override
  $Res call({
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_UserLocation(
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
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserLocation implements _UserLocation {
  _$_UserLocation(
      {@JsonKey(name: "place_name") required this.placeName,
      required this.district,
      required this.state,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.countryCode});

  factory _$_UserLocation.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLocationFromJson(json);

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
  final double latitude;
  @override
  final double longitude;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'UserLocation(placeName: $placeName, district: $district, state: $state, country: $country, latitude: $latitude, longitude: $longitude, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLocation &&
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
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$UserLocationCopyWith<_UserLocation> get copyWith =>
      __$UserLocationCopyWithImpl<_UserLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLocationToJson(this);
  }
}

abstract class _UserLocation implements UserLocation {
  factory _UserLocation(
      {@JsonKey(name: "place_name") required String placeName,
      required String district,
      required String state,
      required String country,
      required double latitude,
      required double longitude,
      required String countryCode}) = _$_UserLocation;

  factory _UserLocation.fromJson(Map<String, dynamic> json) =
      _$_UserLocation.fromJson;

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
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  String get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLocationCopyWith<_UserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

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

  _AuthResponse call({bool? status, required String detail}) {
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
  bool? get status => throw _privateConstructorUsedError;
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
  $Res call({bool? status, String detail});
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
              as bool?,
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
  $Res call({bool? status, String detail});
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
              as bool?,
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
  final bool? status;
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
  factory _AuthResponse({bool? status, required String detail}) =
      _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

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
