// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'js_registration.dart';

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
      {@JsonKey(name: "phone_number")
          required String phoneNumber,
      required String password,
      @JsonKey(name: "place_name")
          required String placeName,
      required String district,
      required String state,
      required String country,
      required String latitude,
      required String longitude,
      @JsonKey(name: "jobseeker_profile.video")
          required String video,
      @JsonKey(name: "jobseeker_profile.thumbnail")
          required String thumbnail,
      @JsonKey(name: "jobseeker_profile.skill")
          required String skillId,
      @JsonKey(name: "user_language.language")
          required String primaryLanguage}) {
    return _Registration(
      phoneNumber: phoneNumber,
      password: password,
      placeName: placeName,
      district: district,
      state: state,
      country: country,
      latitude: latitude,
      longitude: longitude,
      video: video,
      thumbnail: thumbnail,
      skillId: skillId,
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
// -- LoginInfo
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError; // -- UserLocation
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError; // -- Others
  @JsonKey(name: "jobseeker_profile.video")
  String get video => throw _privateConstructorUsedError;
  @JsonKey(name: "jobseeker_profile.thumbnail")
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "jobseeker_profile.skill")
  String get skillId => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "phone_number") String phoneNumber,
      String password,
      @JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      String latitude,
      String longitude,
      @JsonKey(name: "jobseeker_profile.video") String video,
      @JsonKey(name: "jobseeker_profile.thumbnail") String thumbnail,
      @JsonKey(name: "jobseeker_profile.skill") String skillId,
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
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? video = freezed,
    Object? thumbnail = freezed,
    Object? skillId = freezed,
    Object? primaryLanguage = freezed,
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
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      skillId: skillId == freezed
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "phone_number") String phoneNumber,
      String password,
      @JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      String latitude,
      String longitude,
      @JsonKey(name: "jobseeker_profile.video") String video,
      @JsonKey(name: "jobseeker_profile.thumbnail") String thumbnail,
      @JsonKey(name: "jobseeker_profile.skill") String skillId,
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
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? video = freezed,
    Object? thumbnail = freezed,
    Object? skillId = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_Registration(
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
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      skillId: skillId == freezed
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      required this.password,
      @JsonKey(name: "place_name") required this.placeName,
      required this.district,
      required this.state,
      required this.country,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: "jobseeker_profile.video") required this.video,
      @JsonKey(name: "jobseeker_profile.thumbnail") required this.thumbnail,
      @JsonKey(name: "jobseeker_profile.skill") required this.skillId,
      @JsonKey(name: "user_language.language") required this.primaryLanguage});

  factory _$_Registration.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationFromJson(json);

  @override // -- LoginInfo
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String password;
  @override // -- UserLocation
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
  @override // -- Others
  @JsonKey(name: "jobseeker_profile.video")
  final String video;
  @override
  @JsonKey(name: "jobseeker_profile.thumbnail")
  final String thumbnail;
  @override
  @JsonKey(name: "jobseeker_profile.skill")
  final String skillId;
  @override
  @JsonKey(name: "user_language.language")
  final String primaryLanguage;

  @override
  String toString() {
    return 'Registration(phoneNumber: $phoneNumber, password: $password, placeName: $placeName, district: $district, state: $state, country: $country, latitude: $latitude, longitude: $longitude, video: $video, thumbnail: $thumbnail, skillId: $skillId, primaryLanguage: $primaryLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Registration &&
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
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.skillId, skillId) ||
                const DeepCollectionEquality()
                    .equals(other.skillId, skillId)) &&
            (identical(other.primaryLanguage, primaryLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.primaryLanguage, primaryLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(skillId) ^
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
      {@JsonKey(name: "phone_number")
          required String phoneNumber,
      required String password,
      @JsonKey(name: "place_name")
          required String placeName,
      required String district,
      required String state,
      required String country,
      required String latitude,
      required String longitude,
      @JsonKey(name: "jobseeker_profile.video")
          required String video,
      @JsonKey(name: "jobseeker_profile.thumbnail")
          required String thumbnail,
      @JsonKey(name: "jobseeker_profile.skill")
          required String skillId,
      @JsonKey(name: "user_language.language")
          required String primaryLanguage}) = _$_Registration;

  factory _Registration.fromJson(Map<String, dynamic> json) =
      _$_Registration.fromJson;

  @override // -- LoginInfo
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override // -- UserLocation
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
  @override // -- Others
  @JsonKey(name: "jobseeker_profile.video")
  String get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "jobseeker_profile.thumbnail")
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "jobseeker_profile.skill")
  String get skillId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_language.language")
  String get primaryLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationCopyWith<_Registration> get copyWith =>
      throw _privateConstructorUsedError;
}
