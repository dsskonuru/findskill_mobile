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
      required String latitude,
      required String longitude,
      @JsonKey(name: "terms_accept")
          required bool hasAccepetedTerms,
      @JsonKey(name: "is_employer")
          required bool isEmployer,
      @JsonKey(name: "user_language.language")
          required String primaryLanguage}) {
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
      hasAccepetedTerms: hasAccepetedTerms,
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
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "terms_accept")
  bool get hasAccepetedTerms => throw _privateConstructorUsedError;
  @JsonKey(name: "is_employer")
  bool get isEmployer =>
      throw _privateConstructorUsedError; // @JsonKey(name: "is_jobseeker") required bool isJobseeker,
  @JsonKey(name: "user_language.language")
  String get primaryLanguage => throw _privateConstructorUsedError;

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
      String latitude,
      String longitude,
      @JsonKey(name: "terms_accept") bool hasAccepetedTerms,
      @JsonKey(name: "is_employer") bool isEmployer,
      @JsonKey(name: "user_language.language") String primaryLanguage});
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
    Object? hasAccepetedTerms = freezed,
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
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      hasAccepetedTerms: hasAccepetedTerms == freezed
          ? _value.hasAccepetedTerms
          : hasAccepetedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmployer: isEmployer == freezed
          ? _value.isEmployer
          : isEmployer // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryLanguage: primaryLanguage == freezed
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
      String latitude,
      String longitude,
      @JsonKey(name: "terms_accept") bool hasAccepetedTerms,
      @JsonKey(name: "is_employer") bool isEmployer,
      @JsonKey(name: "user_language.language") String primaryLanguage});
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
    Object? hasAccepetedTerms = freezed,
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
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      hasAccepetedTerms: hasAccepetedTerms == freezed
          ? _value.hasAccepetedTerms
          : hasAccepetedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmployer: isEmployer == freezed
          ? _value.isEmployer
          : isEmployer // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryLanguage: primaryLanguage == freezed
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "terms_accept") required this.hasAccepetedTerms,
      @JsonKey(name: "is_employer") required this.isEmployer,
      @JsonKey(name: "user_language.language") required this.primaryLanguage});

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
  final String latitude;
  @override
  final String longitude;
  @override
  @JsonKey(name: "terms_accept")
  final bool hasAccepetedTerms;
  @override
  @JsonKey(name: "is_employer")
  final bool isEmployer;
  @override // @JsonKey(name: "is_jobseeker") required bool isJobseeker,
  @JsonKey(name: "user_language.language")
  final String primaryLanguage;

  @override
  String toString() {
    return 'Registration(userName: $userName, phoneNumber: $phoneNumber, password: $password, placeName: $placeName, district: $district, state: $state, country: $country, latitude: $latitude, longitude: $longitude, hasAccepetedTerms: $hasAccepetedTerms, isEmployer: $isEmployer, primaryLanguage: $primaryLanguage)';
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
            (identical(other.hasAccepetedTerms, hasAccepetedTerms) ||
                const DeepCollectionEquality()
                    .equals(other.hasAccepetedTerms, hasAccepetedTerms)) &&
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
      const DeepCollectionEquality().hash(hasAccepetedTerms) ^
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
      required String latitude,
      required String longitude,
      @JsonKey(name: "terms_accept")
          required bool hasAccepetedTerms,
      @JsonKey(name: "is_employer")
          required bool isEmployer,
      @JsonKey(name: "user_language.language")
          required String primaryLanguage}) = _$_Registration;

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
  String get latitude => throw _privateConstructorUsedError;
  @override
  String get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "terms_accept")
  bool get hasAccepetedTerms => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_employer")
  bool get isEmployer => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "is_jobseeker") required bool isJobseeker,
  @JsonKey(name: "user_language.language")
  String get primaryLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationCopyWith<_Registration> get copyWith =>
      throw _privateConstructorUsedError;
}
