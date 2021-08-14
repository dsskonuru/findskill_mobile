// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
