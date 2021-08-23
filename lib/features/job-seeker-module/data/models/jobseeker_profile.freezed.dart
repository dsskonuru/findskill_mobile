// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'jobseeker_profile.dart';

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
      {required String uid,
      @JsonKey(name: "phone_number") required String phoneNumber,
      @JsonKey(name: "user_name") required String userName,
      required String? email,
      @JsonKey(name: "profile_pic") required String? profilePic,
      required String gender,
      @JsonKey(name: "place_name") required String placeName,
      required String district,
      required String state,
      required String country,
      required String latitude,
      required String longitude,
      required String location}) {
    return _User(
      uid: uid,
      phoneNumber: phoneNumber,
      userName: userName,
      email: email,
      profilePic: profilePic,
      gender: gender,
      placeName: placeName,
      district: district,
      state: state,
      country: country,
      latitude: latitude,
      longitude: longitude,
      location: location,
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
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "place_name")
  String get placeName => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "user_name") String userName,
      String? email,
      @JsonKey(name: "profile_pic") String? profilePic,
      String gender,
      @JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      String latitude,
      String longitude,
      String location});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? phoneNumber = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
    Object? gender = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: profilePic == freezed
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "user_name") String userName,
      String? email,
      @JsonKey(name: "profile_pic") String? profilePic,
      String gender,
      @JsonKey(name: "place_name") String placeName,
      String district,
      String state,
      String country,
      String latitude,
      String longitude,
      String location});
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
    Object? uid = freezed,
    Object? phoneNumber = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
    Object? gender = freezed,
    Object? placeName = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? location = freezed,
  }) {
    return _then(_User(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: profilePic == freezed
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_User implements _User {
  _$_User(
      {required this.uid,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "user_name") required this.userName,
      required this.email,
      @JsonKey(name: "profile_pic") required this.profilePic,
      required this.gender,
      @JsonKey(name: "place_name") required this.placeName,
      required this.district,
      required this.state,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.location});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String uid;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "user_name")
  final String userName;
  @override
  final String? email;
  @override
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  final String gender;
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
  final String location;

  @override
  String toString() {
    return 'User(uid: $uid, phoneNumber: $phoneNumber, userName: $userName, email: $email, profilePic: $profilePic, gender: $gender, placeName: $placeName, district: $district, state: $state, country: $country, latitude: $latitude, longitude: $longitude, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.profilePic, profilePic) ||
                const DeepCollectionEquality()
                    .equals(other.profilePic, profilePic)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
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
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profilePic) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(location);

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
      {required String uid,
      @JsonKey(name: "phone_number") required String phoneNumber,
      @JsonKey(name: "user_name") required String userName,
      required String? email,
      @JsonKey(name: "profile_pic") required String? profilePic,
      required String gender,
      @JsonKey(name: "place_name") required String placeName,
      required String district,
      required String state,
      required String country,
      required String latitude,
      required String longitude,
      required String location}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
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
  String get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

JobseekerProfile _$JobseekerProfileFromJson(Map<String, dynamic> json) {
  return _JobseekerProfile.fromJson(json);
}

/// @nodoc
class _$JobseekerProfileTearOff {
  const _$JobseekerProfileTearOff();

  _JobseekerProfile call(
      {required String video,
      required String thumbnail,
      @JsonKey(name: "maximum_rate") required String maximumRate,
      @JsonKey(name: "minimum_rate") required String minimumRate,
      @JsonKey(name: "contract_type") required String contractType,
      @JsonKey(name: "job_type") required String jobType,
      required Skills skill}) {
    return _JobseekerProfile(
      video: video,
      thumbnail: thumbnail,
      maximumRate: maximumRate,
      minimumRate: minimumRate,
      contractType: contractType,
      jobType: jobType,
      skill: skill,
    );
  }

  JobseekerProfile fromJson(Map<String, Object> json) {
    return JobseekerProfile.fromJson(json);
  }
}

/// @nodoc
const $JobseekerProfile = _$JobseekerProfileTearOff();

/// @nodoc
mixin _$JobseekerProfile {
  String get video => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_rate")
  String get maximumRate => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_rate")
  String get minimumRate => throw _privateConstructorUsedError;
  @JsonKey(name: "contract_type")
  String get contractType => throw _privateConstructorUsedError;
  @JsonKey(name: "job_type")
  String get jobType => throw _privateConstructorUsedError;
  Skills get skill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobseekerProfileCopyWith<JobseekerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobseekerProfileCopyWith<$Res> {
  factory $JobseekerProfileCopyWith(
          JobseekerProfile value, $Res Function(JobseekerProfile) then) =
      _$JobseekerProfileCopyWithImpl<$Res>;
  $Res call(
      {String video,
      String thumbnail,
      @JsonKey(name: "maximum_rate") String maximumRate,
      @JsonKey(name: "minimum_rate") String minimumRate,
      @JsonKey(name: "contract_type") String contractType,
      @JsonKey(name: "job_type") String jobType,
      Skills skill});

  $SkillsCopyWith<$Res> get skill;
}

/// @nodoc
class _$JobseekerProfileCopyWithImpl<$Res>
    implements $JobseekerProfileCopyWith<$Res> {
  _$JobseekerProfileCopyWithImpl(this._value, this._then);

  final JobseekerProfile _value;
  // ignore: unused_field
  final $Res Function(JobseekerProfile) _then;

  @override
  $Res call({
    Object? video = freezed,
    Object? thumbnail = freezed,
    Object? maximumRate = freezed,
    Object? minimumRate = freezed,
    Object? contractType = freezed,
    Object? jobType = freezed,
    Object? skill = freezed,
  }) {
    return _then(_value.copyWith(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      maximumRate: maximumRate == freezed
          ? _value.maximumRate
          : maximumRate // ignore: cast_nullable_to_non_nullable
              as String,
      minimumRate: minimumRate == freezed
          ? _value.minimumRate
          : minimumRate // ignore: cast_nullable_to_non_nullable
              as String,
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skills,
    ));
  }

  @override
  $SkillsCopyWith<$Res> get skill {
    return $SkillsCopyWith<$Res>(_value.skill, (value) {
      return _then(_value.copyWith(skill: value));
    });
  }
}

/// @nodoc
abstract class _$JobseekerProfileCopyWith<$Res>
    implements $JobseekerProfileCopyWith<$Res> {
  factory _$JobseekerProfileCopyWith(
          _JobseekerProfile value, $Res Function(_JobseekerProfile) then) =
      __$JobseekerProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String video,
      String thumbnail,
      @JsonKey(name: "maximum_rate") String maximumRate,
      @JsonKey(name: "minimum_rate") String minimumRate,
      @JsonKey(name: "contract_type") String contractType,
      @JsonKey(name: "job_type") String jobType,
      Skills skill});

  @override
  $SkillsCopyWith<$Res> get skill;
}

/// @nodoc
class __$JobseekerProfileCopyWithImpl<$Res>
    extends _$JobseekerProfileCopyWithImpl<$Res>
    implements _$JobseekerProfileCopyWith<$Res> {
  __$JobseekerProfileCopyWithImpl(
      _JobseekerProfile _value, $Res Function(_JobseekerProfile) _then)
      : super(_value, (v) => _then(v as _JobseekerProfile));

  @override
  _JobseekerProfile get _value => super._value as _JobseekerProfile;

  @override
  $Res call({
    Object? video = freezed,
    Object? thumbnail = freezed,
    Object? maximumRate = freezed,
    Object? minimumRate = freezed,
    Object? contractType = freezed,
    Object? jobType = freezed,
    Object? skill = freezed,
  }) {
    return _then(_JobseekerProfile(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      maximumRate: maximumRate == freezed
          ? _value.maximumRate
          : maximumRate // ignore: cast_nullable_to_non_nullable
              as String,
      minimumRate: minimumRate == freezed
          ? _value.minimumRate
          : minimumRate // ignore: cast_nullable_to_non_nullable
              as String,
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Skills,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobseekerProfile implements _JobseekerProfile {
  _$_JobseekerProfile(
      {required this.video,
      required this.thumbnail,
      @JsonKey(name: "maximum_rate") required this.maximumRate,
      @JsonKey(name: "minimum_rate") required this.minimumRate,
      @JsonKey(name: "contract_type") required this.contractType,
      @JsonKey(name: "job_type") required this.jobType,
      required this.skill});

  factory _$_JobseekerProfile.fromJson(Map<String, dynamic> json) =>
      _$_$_JobseekerProfileFromJson(json);

  @override
  final String video;
  @override
  final String thumbnail;
  @override
  @JsonKey(name: "maximum_rate")
  final String maximumRate;
  @override
  @JsonKey(name: "minimum_rate")
  final String minimumRate;
  @override
  @JsonKey(name: "contract_type")
  final String contractType;
  @override
  @JsonKey(name: "job_type")
  final String jobType;
  @override
  final Skills skill;

  @override
  String toString() {
    return 'JobseekerProfile(video: $video, thumbnail: $thumbnail, maximumRate: $maximumRate, minimumRate: $minimumRate, contractType: $contractType, jobType: $jobType, skill: $skill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobseekerProfile &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.maximumRate, maximumRate) ||
                const DeepCollectionEquality()
                    .equals(other.maximumRate, maximumRate)) &&
            (identical(other.minimumRate, minimumRate) ||
                const DeepCollectionEquality()
                    .equals(other.minimumRate, minimumRate)) &&
            (identical(other.contractType, contractType) ||
                const DeepCollectionEquality()
                    .equals(other.contractType, contractType)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.skill, skill) ||
                const DeepCollectionEquality().equals(other.skill, skill)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(maximumRate) ^
      const DeepCollectionEquality().hash(minimumRate) ^
      const DeepCollectionEquality().hash(contractType) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(skill);

  @JsonKey(ignore: true)
  @override
  _$JobseekerProfileCopyWith<_JobseekerProfile> get copyWith =>
      __$JobseekerProfileCopyWithImpl<_JobseekerProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobseekerProfileToJson(this);
  }
}

abstract class _JobseekerProfile implements JobseekerProfile {
  factory _JobseekerProfile(
      {required String video,
      required String thumbnail,
      @JsonKey(name: "maximum_rate") required String maximumRate,
      @JsonKey(name: "minimum_rate") required String minimumRate,
      @JsonKey(name: "contract_type") required String contractType,
      @JsonKey(name: "job_type") required String jobType,
      required Skills skill}) = _$_JobseekerProfile;

  factory _JobseekerProfile.fromJson(Map<String, dynamic> json) =
      _$_JobseekerProfile.fromJson;

  @override
  String get video => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "maximum_rate")
  String get maximumRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "minimum_rate")
  String get minimumRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "contract_type")
  String get contractType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "job_type")
  String get jobType => throw _privateConstructorUsedError;
  @override
  Skills get skill => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobseekerProfileCopyWith<_JobseekerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLanguages _$UserLanguagesFromJson(Map<String, dynamic> json) {
  return _UserLanguages.fromJson(json);
}

/// @nodoc
class _$UserLanguagesTearOff {
  const _$UserLanguagesTearOff();

  _UserLanguages call({required List<UserLanguage> userLanguages}) {
    return _UserLanguages(
      userLanguages: userLanguages,
    );
  }

  UserLanguages fromJson(Map<String, Object> json) {
    return UserLanguages.fromJson(json);
  }
}

/// @nodoc
const $UserLanguages = _$UserLanguagesTearOff();

/// @nodoc
mixin _$UserLanguages {
  List<UserLanguage> get userLanguages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLanguagesCopyWith<UserLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLanguagesCopyWith<$Res> {
  factory $UserLanguagesCopyWith(
          UserLanguages value, $Res Function(UserLanguages) then) =
      _$UserLanguagesCopyWithImpl<$Res>;
  $Res call({List<UserLanguage> userLanguages});
}

/// @nodoc
class _$UserLanguagesCopyWithImpl<$Res>
    implements $UserLanguagesCopyWith<$Res> {
  _$UserLanguagesCopyWithImpl(this._value, this._then);

  final UserLanguages _value;
  // ignore: unused_field
  final $Res Function(UserLanguages) _then;

  @override
  $Res call({
    Object? userLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      userLanguages: userLanguages == freezed
          ? _value.userLanguages
          : userLanguages // ignore: cast_nullable_to_non_nullable
              as List<UserLanguage>,
    ));
  }
}

/// @nodoc
abstract class _$UserLanguagesCopyWith<$Res>
    implements $UserLanguagesCopyWith<$Res> {
  factory _$UserLanguagesCopyWith(
          _UserLanguages value, $Res Function(_UserLanguages) then) =
      __$UserLanguagesCopyWithImpl<$Res>;
  @override
  $Res call({List<UserLanguage> userLanguages});
}

/// @nodoc
class __$UserLanguagesCopyWithImpl<$Res>
    extends _$UserLanguagesCopyWithImpl<$Res>
    implements _$UserLanguagesCopyWith<$Res> {
  __$UserLanguagesCopyWithImpl(
      _UserLanguages _value, $Res Function(_UserLanguages) _then)
      : super(_value, (v) => _then(v as _UserLanguages));

  @override
  _UserLanguages get _value => super._value as _UserLanguages;

  @override
  $Res call({
    Object? userLanguages = freezed,
  }) {
    return _then(_UserLanguages(
      userLanguages: userLanguages == freezed
          ? _value.userLanguages
          : userLanguages // ignore: cast_nullable_to_non_nullable
              as List<UserLanguage>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserLanguages implements _UserLanguages {
  _$_UserLanguages({required this.userLanguages});

  factory _$_UserLanguages.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLanguagesFromJson(json);

  @override
  final List<UserLanguage> userLanguages;

  @override
  String toString() {
    return 'UserLanguages(userLanguages: $userLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLanguages &&
            (identical(other.userLanguages, userLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.userLanguages, userLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userLanguages);

  @JsonKey(ignore: true)
  @override
  _$UserLanguagesCopyWith<_UserLanguages> get copyWith =>
      __$UserLanguagesCopyWithImpl<_UserLanguages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserLanguagesToJson(this);
  }
}

abstract class _UserLanguages implements UserLanguages {
  factory _UserLanguages({required List<UserLanguage> userLanguages}) =
      _$_UserLanguages;

  factory _UserLanguages.fromJson(Map<String, dynamic> json) =
      _$_UserLanguages.fromJson;

  @override
  List<UserLanguage> get userLanguages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLanguagesCopyWith<_UserLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLanguage _$UserLanguageFromJson(Map<String, dynamic> json) {
  return _UserLanguage.fromJson(json);
}

/// @nodoc
class _$UserLanguageTearOff {
  const _$UserLanguageTearOff();

  _UserLanguage call(
      {required String language,
      required List<String> proficiency,
      @JsonKey(name: "is_primary_language")
          required String isPrimaryLanguage}) {
    return _UserLanguage(
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
  String get language => throw _privateConstructorUsedError;
  List<String> get proficiency => throw _privateConstructorUsedError;
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
      {String language,
      List<String> proficiency,
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
    Object? language = freezed,
    Object? proficiency = freezed,
    Object? isPrimaryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      proficiency: proficiency == freezed
          ? _value.proficiency
          : proficiency // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {String language,
      List<String> proficiency,
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
    Object? language = freezed,
    Object? proficiency = freezed,
    Object? isPrimaryLanguage = freezed,
  }) {
    return _then(_UserLanguage(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      proficiency: proficiency == freezed
          ? _value.proficiency
          : proficiency // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {required this.language,
      required this.proficiency,
      @JsonKey(name: "is_primary_language") required this.isPrimaryLanguage});

  factory _$_UserLanguage.fromJson(Map<String, dynamic> json) =>
      _$_$_UserLanguageFromJson(json);

  @override
  final String language;
  @override
  final List<String> proficiency;
  @override
  @JsonKey(name: "is_primary_language")
  final String isPrimaryLanguage;

  @override
  String toString() {
    return 'UserLanguage(language: $language, proficiency: $proficiency, isPrimaryLanguage: $isPrimaryLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLanguage &&
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
      {required String language,
      required List<String> proficiency,
      @JsonKey(name: "is_primary_language")
          required String isPrimaryLanguage}) = _$_UserLanguage;

  factory _UserLanguage.fromJson(Map<String, dynamic> json) =
      _$_UserLanguage.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  List<String> get proficiency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_primary_language")
  String get isPrimaryLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserLanguageCopyWith<_UserLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

JobseekerProfileResponse _$JobseekerProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _JobseekerProfileResponse.fromJson(json);
}

/// @nodoc
class _$JobseekerProfileResponseTearOff {
  const _$JobseekerProfileResponseTearOff();

  _JobseekerProfileResponse call(
      {required User jobseeker,
      @JsonKey(name: "jobseeker_profile")
          required JobseekerProfile jobseekerProfile,
      @JsonKey(name: "user_language")
          required UserLanguages userLanguages}) {
    return _JobseekerProfileResponse(
      jobseeker: jobseeker,
      jobseekerProfile: jobseekerProfile,
      userLanguages: userLanguages,
    );
  }

  JobseekerProfileResponse fromJson(Map<String, Object> json) {
    return JobseekerProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $JobseekerProfileResponse = _$JobseekerProfileResponseTearOff();

/// @nodoc
mixin _$JobseekerProfileResponse {
  User get jobseeker => throw _privateConstructorUsedError;
  @JsonKey(name: "jobseeker_profile")
  JobseekerProfile get jobseekerProfile => throw _privateConstructorUsedError;
  @JsonKey(name: "user_language")
  UserLanguages get userLanguages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobseekerProfileResponseCopyWith<JobseekerProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobseekerProfileResponseCopyWith<$Res> {
  factory $JobseekerProfileResponseCopyWith(JobseekerProfileResponse value,
          $Res Function(JobseekerProfileResponse) then) =
      _$JobseekerProfileResponseCopyWithImpl<$Res>;
  $Res call(
      {User jobseeker,
      @JsonKey(name: "jobseeker_profile") JobseekerProfile jobseekerProfile,
      @JsonKey(name: "user_language") UserLanguages userLanguages});

  $UserCopyWith<$Res> get jobseeker;
  $JobseekerProfileCopyWith<$Res> get jobseekerProfile;
  $UserLanguagesCopyWith<$Res> get userLanguages;
}

/// @nodoc
class _$JobseekerProfileResponseCopyWithImpl<$Res>
    implements $JobseekerProfileResponseCopyWith<$Res> {
  _$JobseekerProfileResponseCopyWithImpl(this._value, this._then);

  final JobseekerProfileResponse _value;
  // ignore: unused_field
  final $Res Function(JobseekerProfileResponse) _then;

  @override
  $Res call({
    Object? jobseeker = freezed,
    Object? jobseekerProfile = freezed,
    Object? userLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      jobseeker: jobseeker == freezed
          ? _value.jobseeker
          : jobseeker // ignore: cast_nullable_to_non_nullable
              as User,
      jobseekerProfile: jobseekerProfile == freezed
          ? _value.jobseekerProfile
          : jobseekerProfile // ignore: cast_nullable_to_non_nullable
              as JobseekerProfile,
      userLanguages: userLanguages == freezed
          ? _value.userLanguages
          : userLanguages // ignore: cast_nullable_to_non_nullable
              as UserLanguages,
    ));
  }

  @override
  $UserCopyWith<$Res> get jobseeker {
    return $UserCopyWith<$Res>(_value.jobseeker, (value) {
      return _then(_value.copyWith(jobseeker: value));
    });
  }

  @override
  $JobseekerProfileCopyWith<$Res> get jobseekerProfile {
    return $JobseekerProfileCopyWith<$Res>(_value.jobseekerProfile, (value) {
      return _then(_value.copyWith(jobseekerProfile: value));
    });
  }

  @override
  $UserLanguagesCopyWith<$Res> get userLanguages {
    return $UserLanguagesCopyWith<$Res>(_value.userLanguages, (value) {
      return _then(_value.copyWith(userLanguages: value));
    });
  }
}

/// @nodoc
abstract class _$JobseekerProfileResponseCopyWith<$Res>
    implements $JobseekerProfileResponseCopyWith<$Res> {
  factory _$JobseekerProfileResponseCopyWith(_JobseekerProfileResponse value,
          $Res Function(_JobseekerProfileResponse) then) =
      __$JobseekerProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {User jobseeker,
      @JsonKey(name: "jobseeker_profile") JobseekerProfile jobseekerProfile,
      @JsonKey(name: "user_language") UserLanguages userLanguages});

  @override
  $UserCopyWith<$Res> get jobseeker;
  @override
  $JobseekerProfileCopyWith<$Res> get jobseekerProfile;
  @override
  $UserLanguagesCopyWith<$Res> get userLanguages;
}

/// @nodoc
class __$JobseekerProfileResponseCopyWithImpl<$Res>
    extends _$JobseekerProfileResponseCopyWithImpl<$Res>
    implements _$JobseekerProfileResponseCopyWith<$Res> {
  __$JobseekerProfileResponseCopyWithImpl(_JobseekerProfileResponse _value,
      $Res Function(_JobseekerProfileResponse) _then)
      : super(_value, (v) => _then(v as _JobseekerProfileResponse));

  @override
  _JobseekerProfileResponse get _value =>
      super._value as _JobseekerProfileResponse;

  @override
  $Res call({
    Object? jobseeker = freezed,
    Object? jobseekerProfile = freezed,
    Object? userLanguages = freezed,
  }) {
    return _then(_JobseekerProfileResponse(
      jobseeker: jobseeker == freezed
          ? _value.jobseeker
          : jobseeker // ignore: cast_nullable_to_non_nullable
              as User,
      jobseekerProfile: jobseekerProfile == freezed
          ? _value.jobseekerProfile
          : jobseekerProfile // ignore: cast_nullable_to_non_nullable
              as JobseekerProfile,
      userLanguages: userLanguages == freezed
          ? _value.userLanguages
          : userLanguages // ignore: cast_nullable_to_non_nullable
              as UserLanguages,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobseekerProfileResponse implements _JobseekerProfileResponse {
  _$_JobseekerProfileResponse(
      {required this.jobseeker,
      @JsonKey(name: "jobseeker_profile") required this.jobseekerProfile,
      @JsonKey(name: "user_language") required this.userLanguages});

  factory _$_JobseekerProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_JobseekerProfileResponseFromJson(json);

  @override
  final User jobseeker;
  @override
  @JsonKey(name: "jobseeker_profile")
  final JobseekerProfile jobseekerProfile;
  @override
  @JsonKey(name: "user_language")
  final UserLanguages userLanguages;

  @override
  String toString() {
    return 'JobseekerProfileResponse(jobseeker: $jobseeker, jobseekerProfile: $jobseekerProfile, userLanguages: $userLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobseekerProfileResponse &&
            (identical(other.jobseeker, jobseeker) ||
                const DeepCollectionEquality()
                    .equals(other.jobseeker, jobseeker)) &&
            (identical(other.jobseekerProfile, jobseekerProfile) ||
                const DeepCollectionEquality()
                    .equals(other.jobseekerProfile, jobseekerProfile)) &&
            (identical(other.userLanguages, userLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.userLanguages, userLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(jobseeker) ^
      const DeepCollectionEquality().hash(jobseekerProfile) ^
      const DeepCollectionEquality().hash(userLanguages);

  @JsonKey(ignore: true)
  @override
  _$JobseekerProfileResponseCopyWith<_JobseekerProfileResponse> get copyWith =>
      __$JobseekerProfileResponseCopyWithImpl<_JobseekerProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobseekerProfileResponseToJson(this);
  }
}

abstract class _JobseekerProfileResponse implements JobseekerProfileResponse {
  factory _JobseekerProfileResponse(
      {required User jobseeker,
      @JsonKey(name: "jobseeker_profile")
          required JobseekerProfile jobseekerProfile,
      @JsonKey(name: "user_language")
          required UserLanguages userLanguages}) = _$_JobseekerProfileResponse;

  factory _JobseekerProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_JobseekerProfileResponse.fromJson;

  @override
  User get jobseeker => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "jobseeker_profile")
  JobseekerProfile get jobseekerProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_language")
  UserLanguages get userLanguages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobseekerProfileResponseCopyWith<_JobseekerProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
