// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@JsonKey(name: "phone_number") required String phoneNumber,
      required String password,
      required String userItems,
      @JsonKey(name: "placeName") required String placeName,
      required String district,
      required String country,
      required String latitude,
      required String longitude,
      required Profile profile,
      required UserLanguage language}) {
    return _User(
      phoneNumber: phoneNumber,
      password: password,
      userItems: userItems,
      placeName: placeName,
      district: district,
      country: country,
      latitude: latitude,
      longitude: longitude,
      profile: profile,
      language: language,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userItems => throw _privateConstructorUsedError;
  @JsonKey(name: "placeName")
  String get placeName => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  UserLanguage get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      String password,
      String userItems,
      @JsonKey(name: "placeName") String placeName,
      String district,
      String country,
      String latitude,
      String longitude,
      Profile profile,
      UserLanguage language});

  $ProfileCopyWith<$Res> get profile;
  $UserLanguageCopyWith<$Res> get language;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? userItems = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? profile = freezed,
    Object? language = freezed,
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
      userItems: userItems == freezed
          ? _value.userItems
          : userItems // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
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
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as UserLanguage,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $UserLanguageCopyWith<$Res> get language {
    return $UserLanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      String password,
      String userItems,
      @JsonKey(name: "placeName") String placeName,
      String district,
      String country,
      String latitude,
      String longitude,
      Profile profile,
      UserLanguage language});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $UserLanguageCopyWith<$Res> get language;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? userItems = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? profile = freezed,
    Object? language = freezed,
  }) {
    return _then(_User(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userItems: userItems == freezed
          ? _value.userItems
          : userItems // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
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
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as UserLanguage,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_User implements _User {
  _$_User(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      required this.password,
      required this.userItems,
      @JsonKey(name: "placeName") required this.placeName,
      required this.district,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.profile,
      required this.language});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  final String password;
  @override
  final String userItems;
  @override
  @JsonKey(name: "placeName")
  final String placeName;
  @override
  final String district;
  @override
  final String country;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final Profile profile;
  @override
  final UserLanguage language;

  @override
  String toString() {
    return 'User(phoneNumber: $phoneNumber, password: $password, userItems: $userItems, placeName: $placeName, district: $district, country: $country, latitude: $latitude, longitude: $longitude, profile: $profile, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userItems, userItems) ||
                const DeepCollectionEquality()
                    .equals(other.userItems, userItems)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userItems) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: "phone_number") required String phoneNumber,
      required String password,
      required String userItems,
      @JsonKey(name: "placeName") required String placeName,
      required String district,
      required String country,
      required String latitude,
      required String longitude,
      required Profile profile,
      required UserLanguage language}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get userItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "placeName")
  String get placeName => throw _privateConstructorUsedError;
  @override
  String get district => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get latitude => throw _privateConstructorUsedError;
  @override
  String get longitude => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  UserLanguage get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call({required String video, required List<String> skill}) {
    return _Profile(
      video: video,
      skill: skill,
    );
  }

  Profile fromJson(Map<String, Object> json) {
    return Profile.fromJson(json);
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get video => throw _privateConstructorUsedError;
  List<String> get skill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call({String video, List<String> skill});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? video = freezed,
    Object? skill = freezed,
  }) {
    return _then(_value.copyWith(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call({String video, List<String> skill});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object? video = freezed,
    Object? skill = freezed,
  }) {
    return _then(_Profile(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Profile implements _Profile {
  _$_Profile({required this.video, required this.skill});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileFromJson(json);

  @override
  final String video;
  @override
  final List<String> skill;

  @override
  String toString() {
    return 'Profile(video: $video, skill: $skill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.skill, skill) ||
                const DeepCollectionEquality().equals(other.skill, skill)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(skill);

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  factory _Profile({required String video, required List<String> skill}) =
      _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get video => throw _privateConstructorUsedError;
  @override
  List<String> get skill => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLanguage _$UserLanguageFromJson(Map<String, dynamic> json) {
  return _UserLanguage.fromJson(json);
}

/// @nodoc
class _$UserLanguageTearOff {
  const _$UserLanguageTearOff();

  _UserLanguage call(
      {required String user,
      required String language,
      required String proficiency,
      @JsonKey(name: "is_primary_language")
          required String isPrimaryLanguage}) {
    return _UserLanguage(
      user: user,
      language: language,
      proficiency: proficiency,
      isPrimaryLanguage: isPrimaryLanguage,
    );
  }

  UserLanguage fromJson(Map<String, Object> json) {
    return UserLanguage.fromJson(json);
  }
}

/// @nodoc
const $UserLanguage = _$UserLanguageTearOff();

/// @nodoc
mixin _$UserLanguage {
  String get user => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get proficiency => throw _privateConstructorUsedError;
  @JsonKey(name: "is_primary_language")
  String get isPrimaryLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLanguageCopyWith<UserLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLanguageCopyWith<$Res> {
  factory $UserLanguageCopyWith(
          UserLanguage value, $Res Function(UserLanguage) then) =
      _$UserLanguageCopyWithImpl<$Res>;
  $Res call(
      {String user,
      String language,
      String proficiency,
      @JsonKey(name: "is_primary_language") String isPrimaryLanguage});
}

/// @nodoc
class _$UserLanguageCopyWithImpl<$Res> implements $UserLanguageCopyWith<$Res> {
  _$UserLanguageCopyWithImpl(this._value, this._then);

  final UserLanguage _value;
  // ignore: unused_field
  final $Res Function(UserLanguage) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? language = freezed,
    Object? proficiency = freezed,
    Object? isPrimaryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      proficiency: proficiency == freezed
          ? _value.proficiency
          : proficiency // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimaryLanguage: isPrimaryLanguage == freezed
          ? _value.isPrimaryLanguage
          : isPrimaryLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserLanguageCopyWith<$Res>
    implements $UserLanguageCopyWith<$Res> {
  factory _$UserLanguageCopyWith(
          _UserLanguage value, $Res Function(_UserLanguage) then) =
      __$UserLanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String user,
      String language,
      String proficiency,
      @JsonKey(name: "is_primary_language") String isPrimaryLanguage});
}

/// @nodoc
class __$UserLanguageCopyWithImpl<$Res> extends _$UserLanguageCopyWithImpl<$Res>
    implements _$UserLanguageCopyWith<$Res> {
  __$UserLanguageCopyWithImpl(
      _UserLanguage _value, $Res Function(_UserLanguage) _then)
      : super(_value, (v) => _then(v as _UserLanguage));

  @override
  _UserLanguage get _value => super._value as _UserLanguage;

  @override
  $Res call({
    Object? user = freezed,
    Object? language = freezed,
    Object? proficiency = freezed,
    Object? isPrimaryLanguage = freezed,
  }) {
    return _then(_UserLanguage(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      proficiency: proficiency == freezed
          ? _value.proficiency
          : proficiency // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimaryLanguage: isPrimaryLanguage == freezed
          ? _value.isPrimaryLanguage
          : isPrimaryLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserLanguage implements _UserLanguage {
  _$_UserLanguage(
      {required this.user,
      required this.language,
      required this.proficiency,
      @JsonKey(name: "is_primary_language") required this.isPrimaryLanguage});

  factory _$_UserLanguage.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLanguageFromJson(json);

  @override
  final String user;
  @override
  final String language;
  @override
  final String proficiency;
  @override
  @JsonKey(name: "is_primary_language")
  final String isPrimaryLanguage;

  @override
  String toString() {
    return 'UserLanguage(user: $user, language: $language, proficiency: $proficiency, isPrimaryLanguage: $isPrimaryLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLanguage &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.proficiency, proficiency) ||
                const DeepCollectionEquality()
                    .equals(other.proficiency, proficiency)) &&
            (identical(other.isPrimaryLanguage, isPrimaryLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimaryLanguage, isPrimaryLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(proficiency) ^
      const DeepCollectionEquality().hash(isPrimaryLanguage);

  @JsonKey(ignore: true)
  @override
  _$UserLanguageCopyWith<_UserLanguage> get copyWith =>
      __$UserLanguageCopyWithImpl<_UserLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLanguageToJson(this);
  }
}

abstract class _UserLanguage implements UserLanguage {
  factory _UserLanguage(
      {required String user,
      required String language,
      required String proficiency,
      @JsonKey(name: "is_primary_language")
          required String isPrimaryLanguage}) = _$_UserLanguage;

  factory _UserLanguage.fromJson(Map<String, dynamic> json) =
      _$_UserLanguage.fromJson;

  @override
  String get user => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get proficiency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_primary_language")
  String get isPrimaryLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLanguageCopyWith<_UserLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
