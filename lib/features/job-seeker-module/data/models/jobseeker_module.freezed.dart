// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'jobseeker_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
class _$VideoResponseTearOff {
  const _$VideoResponseTearOff();

  _VideoResponse call(
      {required bool status, required String user, required String video}) {
    return _VideoResponse(
      status: status,
      user: user,
      video: video,
    );
  }

  VideoResponse fromJson(Map<String, Object> json) {
    return VideoResponse.fromJson(json);
  }
}

/// @nodoc
const $VideoResponse = _$VideoResponseTearOff();

/// @nodoc
mixin _$VideoResponse {
  bool get status => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res>;
  $Res call({bool status, String user, String video});
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

  final VideoResponse _value;
  // ignore: unused_field
  final $Res Function(VideoResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoResponseCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$VideoResponseCopyWith(
          _VideoResponse value, $Res Function(_VideoResponse) then) =
      __$VideoResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool status, String user, String video});
}

/// @nodoc
class __$VideoResponseCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res>
    implements _$VideoResponseCopyWith<$Res> {
  __$VideoResponseCopyWithImpl(
      _VideoResponse _value, $Res Function(_VideoResponse) _then)
      : super(_value, (v) => _then(v as _VideoResponse));

  @override
  _VideoResponse get _value => super._value as _VideoResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
    Object? video = freezed,
  }) {
    return _then(_VideoResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VideoResponse implements _VideoResponse {
  _$_VideoResponse(
      {required this.status, required this.user, required this.video});

  factory _$_VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoResponseFromJson(json);

  @override
  final bool status;
  @override
  final String user;
  @override
  final String video;

  @override
  String toString() {
    return 'VideoResponse(status: $status, user: $user, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(video);

  @JsonKey(ignore: true)
  @override
  _$VideoResponseCopyWith<_VideoResponse> get copyWith =>
      __$VideoResponseCopyWithImpl<_VideoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoResponseToJson(this);
  }
}

abstract class _VideoResponse implements VideoResponse {
  factory _VideoResponse(
      {required bool status,
      required String user,
      required String video}) = _$_VideoResponse;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$_VideoResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  String get user => throw _privateConstructorUsedError;
  @override
  String get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoResponseCopyWith<_VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SkillCategory _$SkillCategoryFromJson(Map<String, dynamic> json) {
  return _SkillCategory.fromJson(json);
}

/// @nodoc
class _$SkillCategoryTearOff {
  const _$SkillCategoryTearOff();

  _SkillCategory call(
      {@JsonKey(name: "uid") required String id,
      @JsonKey(name: "language_code") required String languageCode,
      @JsonKey(name: "category_name") required String categoryName}) {
    return _SkillCategory(
      id: id,
      languageCode: languageCode,
      categoryName: categoryName,
    );
  }

  SkillCategory fromJson(Map<String, Object> json) {
    return SkillCategory.fromJson(json);
  }
}

/// @nodoc
const $SkillCategory = _$SkillCategoryTearOff();

/// @nodoc
mixin _$SkillCategory {
  @JsonKey(name: "uid")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "language_code")
  String get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCategoryCopyWith<SkillCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCategoryCopyWith<$Res> {
  factory $SkillCategoryCopyWith(
          SkillCategory value, $Res Function(SkillCategory) then) =
      _$SkillCategoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "uid") String id,
      @JsonKey(name: "language_code") String languageCode,
      @JsonKey(name: "category_name") String categoryName});
}

/// @nodoc
class _$SkillCategoryCopyWithImpl<$Res>
    implements $SkillCategoryCopyWith<$Res> {
  _$SkillCategoryCopyWithImpl(this._value, this._then);

  final SkillCategory _value;
  // ignore: unused_field
  final $Res Function(SkillCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageCode = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SkillCategoryCopyWith<$Res>
    implements $SkillCategoryCopyWith<$Res> {
  factory _$SkillCategoryCopyWith(
          _SkillCategory value, $Res Function(_SkillCategory) then) =
      __$SkillCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "uid") String id,
      @JsonKey(name: "language_code") String languageCode,
      @JsonKey(name: "category_name") String categoryName});
}

/// @nodoc
class __$SkillCategoryCopyWithImpl<$Res>
    extends _$SkillCategoryCopyWithImpl<$Res>
    implements _$SkillCategoryCopyWith<$Res> {
  __$SkillCategoryCopyWithImpl(
      _SkillCategory _value, $Res Function(_SkillCategory) _then)
      : super(_value, (v) => _then(v as _SkillCategory));

  @override
  _SkillCategory get _value => super._value as _SkillCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageCode = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_SkillCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SkillCategory implements _SkillCategory {
  _$_SkillCategory(
      {@JsonKey(name: "uid") required this.id,
      @JsonKey(name: "language_code") required this.languageCode,
      @JsonKey(name: "category_name") required this.categoryName});

  factory _$_SkillCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillCategoryFromJson(json);

  @override
  @JsonKey(name: "uid")
  final String id;
  @override
  @JsonKey(name: "language_code")
  final String languageCode;
  @override
  @JsonKey(name: "category_name")
  final String categoryName;

  @override
  String toString() {
    return 'SkillCategory(id: $id, languageCode: $languageCode, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(categoryName);

  @JsonKey(ignore: true)
  @override
  _$SkillCategoryCopyWith<_SkillCategory> get copyWith =>
      __$SkillCategoryCopyWithImpl<_SkillCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillCategoryToJson(this);
  }
}

abstract class _SkillCategory implements SkillCategory {
  factory _SkillCategory(
          {@JsonKey(name: "uid") required String id,
          @JsonKey(name: "language_code") required String languageCode,
          @JsonKey(name: "category_name") required String categoryName}) =
      _$_SkillCategory;

  factory _SkillCategory.fromJson(Map<String, dynamic> json) =
      _$_SkillCategory.fromJson;

  @override
  @JsonKey(name: "uid")
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "language_code")
  String get languageCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category_name")
  String get categoryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillCategoryCopyWith<_SkillCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
class _$SkillTearOff {
  const _$SkillTearOff();

  _Skill call(
      {@JsonKey(name: "uid") required String skillId,
      @JsonKey(name: "language_code") required String languageCode,
      required SkillCategory category,
      @JsonKey(name: "skill_name") required String name}) {
    return _Skill(
      skillId: skillId,
      languageCode: languageCode,
      category: category,
      name: name,
    );
  }

  Skill fromJson(Map<String, Object> json) {
    return Skill.fromJson(json);
  }
}

/// @nodoc
const $Skill = _$SkillTearOff();

/// @nodoc
mixin _$Skill {
  @JsonKey(name: "uid")
  String get skillId => throw _privateConstructorUsedError;
  @JsonKey(name: "language_code")
  String get languageCode => throw _privateConstructorUsedError;
  SkillCategory get category => throw _privateConstructorUsedError;
  @JsonKey(name: "skill_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "uid") String skillId,
      @JsonKey(name: "language_code") String languageCode,
      SkillCategory category,
      @JsonKey(name: "skill_name") String name});

  $SkillCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$SkillCopyWithImpl<$Res> implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  final Skill _value;
  // ignore: unused_field
  final $Res Function(Skill) _then;

  @override
  $Res call({
    Object? skillId = freezed,
    Object? languageCode = freezed,
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      skillId: skillId == freezed
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SkillCategory,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SkillCategoryCopyWith<$Res> get category {
    return $SkillCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$SkillCopyWith(_Skill value, $Res Function(_Skill) then) =
      __$SkillCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "uid") String skillId,
      @JsonKey(name: "language_code") String languageCode,
      SkillCategory category,
      @JsonKey(name: "skill_name") String name});

  @override
  $SkillCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res>
    implements _$SkillCopyWith<$Res> {
  __$SkillCopyWithImpl(_Skill _value, $Res Function(_Skill) _then)
      : super(_value, (v) => _then(v as _Skill));

  @override
  _Skill get _value => super._value as _Skill;

  @override
  $Res call({
    Object? skillId = freezed,
    Object? languageCode = freezed,
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_Skill(
      skillId: skillId == freezed
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SkillCategory,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Skill implements _Skill {
  _$_Skill(
      {@JsonKey(name: "uid") required this.skillId,
      @JsonKey(name: "language_code") required this.languageCode,
      required this.category,
      @JsonKey(name: "skill_name") required this.name});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillFromJson(json);

  @override
  @JsonKey(name: "uid")
  final String skillId;
  @override
  @JsonKey(name: "language_code")
  final String languageCode;
  @override
  final SkillCategory category;
  @override
  @JsonKey(name: "skill_name")
  final String name;

  @override
  String toString() {
    return 'Skill(skillId: $skillId, languageCode: $languageCode, category: $category, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Skill &&
            (identical(other.skillId, skillId) ||
                const DeepCollectionEquality()
                    .equals(other.skillId, skillId)) &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skillId) ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$SkillCopyWith<_Skill> get copyWith =>
      __$SkillCopyWithImpl<_Skill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillToJson(this);
  }
}

abstract class _Skill implements Skill {
  factory _Skill(
      {@JsonKey(name: "uid") required String skillId,
      @JsonKey(name: "language_code") required String languageCode,
      required SkillCategory category,
      @JsonKey(name: "skill_name") required String name}) = _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  @JsonKey(name: "uid")
  String get skillId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "language_code")
  String get languageCode => throw _privateConstructorUsedError;
  @override
  SkillCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "skill_name")
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillCopyWith<_Skill> get copyWith => throw _privateConstructorUsedError;
}

SkillsUpdate _$SkillsUpdateFromJson(Map<String, dynamic> json) {
  return _SkillsUpdate.fromJson(json);
}

/// @nodoc
class _$SkillsUpdateTearOff {
  const _$SkillsUpdateTearOff();

  _SkillsUpdate call({required List<String> skill}) {
    return _SkillsUpdate(
      skill: skill,
    );
  }

  SkillsUpdate fromJson(Map<String, Object> json) {
    return SkillsUpdate.fromJson(json);
  }
}

/// @nodoc
const $SkillsUpdate = _$SkillsUpdateTearOff();

/// @nodoc
mixin _$SkillsUpdate {
  List<String> get skill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsUpdateCopyWith<SkillsUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsUpdateCopyWith<$Res> {
  factory $SkillsUpdateCopyWith(
          SkillsUpdate value, $Res Function(SkillsUpdate) then) =
      _$SkillsUpdateCopyWithImpl<$Res>;
  $Res call({List<String> skill});
}

/// @nodoc
class _$SkillsUpdateCopyWithImpl<$Res> implements $SkillsUpdateCopyWith<$Res> {
  _$SkillsUpdateCopyWithImpl(this._value, this._then);

  final SkillsUpdate _value;
  // ignore: unused_field
  final $Res Function(SkillsUpdate) _then;

  @override
  $Res call({
    Object? skill = freezed,
  }) {
    return _then(_value.copyWith(
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SkillsUpdateCopyWith<$Res>
    implements $SkillsUpdateCopyWith<$Res> {
  factory _$SkillsUpdateCopyWith(
          _SkillsUpdate value, $Res Function(_SkillsUpdate) then) =
      __$SkillsUpdateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> skill});
}

/// @nodoc
class __$SkillsUpdateCopyWithImpl<$Res> extends _$SkillsUpdateCopyWithImpl<$Res>
    implements _$SkillsUpdateCopyWith<$Res> {
  __$SkillsUpdateCopyWithImpl(
      _SkillsUpdate _value, $Res Function(_SkillsUpdate) _then)
      : super(_value, (v) => _then(v as _SkillsUpdate));

  @override
  _SkillsUpdate get _value => super._value as _SkillsUpdate;

  @override
  $Res call({
    Object? skill = freezed,
  }) {
    return _then(_SkillsUpdate(
      skill: skill == freezed
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SkillsUpdate implements _SkillsUpdate {
  _$_SkillsUpdate({required this.skill});

  factory _$_SkillsUpdate.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillsUpdateFromJson(json);

  @override
  final List<String> skill;

  @override
  String toString() {
    return 'SkillsUpdate(skill: $skill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillsUpdate &&
            (identical(other.skill, skill) ||
                const DeepCollectionEquality().equals(other.skill, skill)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(skill);

  @JsonKey(ignore: true)
  @override
  _$SkillsUpdateCopyWith<_SkillsUpdate> get copyWith =>
      __$SkillsUpdateCopyWithImpl<_SkillsUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillsUpdateToJson(this);
  }
}

abstract class _SkillsUpdate implements SkillsUpdate {
  factory _SkillsUpdate({required List<String> skill}) = _$_SkillsUpdate;

  factory _SkillsUpdate.fromJson(Map<String, dynamic> json) =
      _$_SkillsUpdate.fromJson;

  @override
  List<String> get skill => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillsUpdateCopyWith<_SkillsUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

SkillsResponse _$SkillsResponseFromJson(Map<String, dynamic> json) {
  return _SkillsResponse.fromJson(json);
}

/// @nodoc
class _$SkillsResponseTearOff {
  const _$SkillsResponseTearOff();

  _SkillsResponse call(
      {required bool status,
      @JsonKey(name: "response_data") required List<String> responseData}) {
    return _SkillsResponse(
      status: status,
      responseData: responseData,
    );
  }

  SkillsResponse fromJson(Map<String, Object> json) {
    return SkillsResponse.fromJson(json);
  }
}

/// @nodoc
const $SkillsResponse = _$SkillsResponseTearOff();

/// @nodoc
mixin _$SkillsResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "response_data")
  List<String> get responseData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsResponseCopyWith<SkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsResponseCopyWith<$Res> {
  factory $SkillsResponseCopyWith(
          SkillsResponse value, $Res Function(SkillsResponse) then) =
      _$SkillsResponseCopyWithImpl<$Res>;
  $Res call(
      {bool status, @JsonKey(name: "response_data") List<String> responseData});
}

/// @nodoc
class _$SkillsResponseCopyWithImpl<$Res>
    implements $SkillsResponseCopyWith<$Res> {
  _$SkillsResponseCopyWithImpl(this._value, this._then);

  final SkillsResponse _value;
  // ignore: unused_field
  final $Res Function(SkillsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SkillsResponseCopyWith<$Res>
    implements $SkillsResponseCopyWith<$Res> {
  factory _$SkillsResponseCopyWith(
          _SkillsResponse value, $Res Function(_SkillsResponse) then) =
      __$SkillsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool status, @JsonKey(name: "response_data") List<String> responseData});
}

/// @nodoc
class __$SkillsResponseCopyWithImpl<$Res>
    extends _$SkillsResponseCopyWithImpl<$Res>
    implements _$SkillsResponseCopyWith<$Res> {
  __$SkillsResponseCopyWithImpl(
      _SkillsResponse _value, $Res Function(_SkillsResponse) _then)
      : super(_value, (v) => _then(v as _SkillsResponse));

  @override
  _SkillsResponse get _value => super._value as _SkillsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_SkillsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SkillsResponse implements _SkillsResponse {
  _$_SkillsResponse(
      {required this.status,
      @JsonKey(name: "response_data") required this.responseData});

  factory _$_SkillsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillsResponseFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: "response_data")
  final List<String> responseData;

  @override
  String toString() {
    return 'SkillsResponse(status: $status, responseData: $responseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillsResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.responseData, responseData) ||
                const DeepCollectionEquality()
                    .equals(other.responseData, responseData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(responseData);

  @JsonKey(ignore: true)
  @override
  _$SkillsResponseCopyWith<_SkillsResponse> get copyWith =>
      __$SkillsResponseCopyWithImpl<_SkillsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillsResponseToJson(this);
  }
}

abstract class _SkillsResponse implements SkillsResponse {
  factory _SkillsResponse(
          {required bool status,
          @JsonKey(name: "response_data") required List<String> responseData}) =
      _$_SkillsResponse;

  factory _SkillsResponse.fromJson(Map<String, dynamic> json) =
      _$_SkillsResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "response_data")
  List<String> get responseData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillsResponseCopyWith<_SkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

JobTypes _$JobTypesFromJson(Map<String, dynamic> json) {
  return _JobTypes.fromJson(json);
}

/// @nodoc
class _$JobTypesTearOff {
  const _$JobTypesTearOff();

  _JobTypes call(
      {@JsonKey(name: "contract_type")
          required Map<String, String> contractType,
      @JsonKey(name: "job_type")
          required Map<String, String> jobType}) {
    return _JobTypes(
      contractType: contractType,
      jobType: jobType,
    );
  }

  JobTypes fromJson(Map<String, Object> json) {
    return JobTypes.fromJson(json);
  }
}

/// @nodoc
const $JobTypes = _$JobTypesTearOff();

/// @nodoc
mixin _$JobTypes {
  @JsonKey(name: "contract_type")
  Map<String, String> get contractType => throw _privateConstructorUsedError;
  @JsonKey(name: "job_type")
  Map<String, String> get jobType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobTypesCopyWith<JobTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobTypesCopyWith<$Res> {
  factory $JobTypesCopyWith(JobTypes value, $Res Function(JobTypes) then) =
      _$JobTypesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "contract_type") Map<String, String> contractType,
      @JsonKey(name: "job_type") Map<String, String> jobType});
}

/// @nodoc
class _$JobTypesCopyWithImpl<$Res> implements $JobTypesCopyWith<$Res> {
  _$JobTypesCopyWithImpl(this._value, this._then);

  final JobTypes _value;
  // ignore: unused_field
  final $Res Function(JobTypes) _then;

  @override
  $Res call({
    Object? contractType = freezed,
    Object? jobType = freezed,
  }) {
    return _then(_value.copyWith(
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$JobTypesCopyWith<$Res> implements $JobTypesCopyWith<$Res> {
  factory _$JobTypesCopyWith(_JobTypes value, $Res Function(_JobTypes) then) =
      __$JobTypesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "contract_type") Map<String, String> contractType,
      @JsonKey(name: "job_type") Map<String, String> jobType});
}

/// @nodoc
class __$JobTypesCopyWithImpl<$Res> extends _$JobTypesCopyWithImpl<$Res>
    implements _$JobTypesCopyWith<$Res> {
  __$JobTypesCopyWithImpl(_JobTypes _value, $Res Function(_JobTypes) _then)
      : super(_value, (v) => _then(v as _JobTypes));

  @override
  _JobTypes get _value => super._value as _JobTypes;

  @override
  $Res call({
    Object? contractType = freezed,
    Object? jobType = freezed,
  }) {
    return _then(_JobTypes(
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobTypes implements _JobTypes {
  _$_JobTypes(
      {@JsonKey(name: "contract_type") required this.contractType,
      @JsonKey(name: "job_type") required this.jobType});

  factory _$_JobTypes.fromJson(Map<String, dynamic> json) =>
      _$_$_JobTypesFromJson(json);

  @override
  @JsonKey(name: "contract_type")
  final Map<String, String> contractType;
  @override
  @JsonKey(name: "job_type")
  final Map<String, String> jobType;

  @override
  String toString() {
    return 'JobTypes(contractType: $contractType, jobType: $jobType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobTypes &&
            (identical(other.contractType, contractType) ||
                const DeepCollectionEquality()
                    .equals(other.contractType, contractType)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality().equals(other.jobType, jobType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contractType) ^
      const DeepCollectionEquality().hash(jobType);

  @JsonKey(ignore: true)
  @override
  _$JobTypesCopyWith<_JobTypes> get copyWith =>
      __$JobTypesCopyWithImpl<_JobTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobTypesToJson(this);
  }
}

abstract class _JobTypes implements JobTypes {
  factory _JobTypes(
      {@JsonKey(name: "contract_type")
          required Map<String, String> contractType,
      @JsonKey(name: "job_type")
          required Map<String, String> jobType}) = _$_JobTypes;

  factory _JobTypes.fromJson(Map<String, dynamic> json) = _$_JobTypes.fromJson;

  @override
  @JsonKey(name: "contract_type")
  Map<String, String> get contractType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "job_type")
  Map<String, String> get jobType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobTypesCopyWith<_JobTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return _Preferences.fromJson(json);
}

/// @nodoc
class _$PreferencesTearOff {
  const _$PreferencesTearOff();

  _Preferences call(
      {@JsonKey(name: "contract_type") required String contractType,
      @JsonKey(name: "job_type") required String jobType,
      @JsonKey(name: "minimum_rate") required String minimumRate,
      @JsonKey(name: "maximum_rate") required String maximumRate}) {
    return _Preferences(
      contractType: contractType,
      jobType: jobType,
      minimumRate: minimumRate,
      maximumRate: maximumRate,
    );
  }

  Preferences fromJson(Map<String, Object> json) {
    return Preferences.fromJson(json);
  }
}

/// @nodoc
const $Preferences = _$PreferencesTearOff();

/// @nodoc
mixin _$Preferences {
  @JsonKey(name: "contract_type")
  String get contractType => throw _privateConstructorUsedError;
  @JsonKey(name: "job_type")
  String get jobType => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_rate")
  String get minimumRate => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_rate")
  String get maximumRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "contract_type") String contractType,
      @JsonKey(name: "job_type") String jobType,
      @JsonKey(name: "minimum_rate") String minimumRate,
      @JsonKey(name: "maximum_rate") String maximumRate});
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res> implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  final Preferences _value;
  // ignore: unused_field
  final $Res Function(Preferences) _then;

  @override
  $Res call({
    Object? contractType = freezed,
    Object? jobType = freezed,
    Object? minimumRate = freezed,
    Object? maximumRate = freezed,
  }) {
    return _then(_value.copyWith(
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      minimumRate: minimumRate == freezed
          ? _value.minimumRate
          : minimumRate // ignore: cast_nullable_to_non_nullable
              as String,
      maximumRate: maximumRate == freezed
          ? _value.maximumRate
          : maximumRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PreferencesCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$PreferencesCopyWith(
          _Preferences value, $Res Function(_Preferences) then) =
      __$PreferencesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "contract_type") String contractType,
      @JsonKey(name: "job_type") String jobType,
      @JsonKey(name: "minimum_rate") String minimumRate,
      @JsonKey(name: "maximum_rate") String maximumRate});
}

/// @nodoc
class __$PreferencesCopyWithImpl<$Res> extends _$PreferencesCopyWithImpl<$Res>
    implements _$PreferencesCopyWith<$Res> {
  __$PreferencesCopyWithImpl(
      _Preferences _value, $Res Function(_Preferences) _then)
      : super(_value, (v) => _then(v as _Preferences));

  @override
  _Preferences get _value => super._value as _Preferences;

  @override
  $Res call({
    Object? contractType = freezed,
    Object? jobType = freezed,
    Object? minimumRate = freezed,
    Object? maximumRate = freezed,
  }) {
    return _then(_Preferences(
      contractType: contractType == freezed
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String,
      minimumRate: minimumRate == freezed
          ? _value.minimumRate
          : minimumRate // ignore: cast_nullable_to_non_nullable
              as String,
      maximumRate: maximumRate == freezed
          ? _value.maximumRate
          : maximumRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Preferences implements _Preferences {
  _$_Preferences(
      {@JsonKey(name: "contract_type") required this.contractType,
      @JsonKey(name: "job_type") required this.jobType,
      @JsonKey(name: "minimum_rate") required this.minimumRate,
      @JsonKey(name: "maximum_rate") required this.maximumRate});

  factory _$_Preferences.fromJson(Map<String, dynamic> json) =>
      _$_$_PreferencesFromJson(json);

  @override
  @JsonKey(name: "contract_type")
  final String contractType;
  @override
  @JsonKey(name: "job_type")
  final String jobType;
  @override
  @JsonKey(name: "minimum_rate")
  final String minimumRate;
  @override
  @JsonKey(name: "maximum_rate")
  final String maximumRate;

  @override
  String toString() {
    return 'Preferences(contractType: $contractType, jobType: $jobType, minimumRate: $minimumRate, maximumRate: $maximumRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Preferences &&
            (identical(other.contractType, contractType) ||
                const DeepCollectionEquality()
                    .equals(other.contractType, contractType)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.minimumRate, minimumRate) ||
                const DeepCollectionEquality()
                    .equals(other.minimumRate, minimumRate)) &&
            (identical(other.maximumRate, maximumRate) ||
                const DeepCollectionEquality()
                    .equals(other.maximumRate, maximumRate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contractType) ^
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(minimumRate) ^
      const DeepCollectionEquality().hash(maximumRate);

  @JsonKey(ignore: true)
  @override
  _$PreferencesCopyWith<_Preferences> get copyWith =>
      __$PreferencesCopyWithImpl<_Preferences>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreferencesToJson(this);
  }
}

abstract class _Preferences implements Preferences {
  factory _Preferences(
          {@JsonKey(name: "contract_type") required String contractType,
          @JsonKey(name: "job_type") required String jobType,
          @JsonKey(name: "minimum_rate") required String minimumRate,
          @JsonKey(name: "maximum_rate") required String maximumRate}) =
      _$_Preferences;

  factory _Preferences.fromJson(Map<String, dynamic> json) =
      _$_Preferences.fromJson;

  @override
  @JsonKey(name: "contract_type")
  String get contractType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "job_type")
  String get jobType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "minimum_rate")
  String get minimumRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "maximum_rate")
  String get maximumRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreferencesCopyWith<_Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

PreferencesResponse _$PreferencesResponseFromJson(Map<String, dynamic> json) {
  return _PreferencesResponse.fromJson(json);
}

/// @nodoc
class _$PreferencesResponseTearOff {
  const _$PreferencesResponseTearOff();

  _PreferencesResponse call(
      {required bool status,
      @JsonKey(name: "response_data") required Preferences responseData}) {
    return _PreferencesResponse(
      status: status,
      responseData: responseData,
    );
  }

  PreferencesResponse fromJson(Map<String, Object> json) {
    return PreferencesResponse.fromJson(json);
  }
}

/// @nodoc
const $PreferencesResponse = _$PreferencesResponseTearOff();

/// @nodoc
mixin _$PreferencesResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "response_data")
  Preferences get responseData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesResponseCopyWith<PreferencesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesResponseCopyWith<$Res> {
  factory $PreferencesResponseCopyWith(
          PreferencesResponse value, $Res Function(PreferencesResponse) then) =
      _$PreferencesResponseCopyWithImpl<$Res>;
  $Res call(
      {bool status, @JsonKey(name: "response_data") Preferences responseData});

  $PreferencesCopyWith<$Res> get responseData;
}

/// @nodoc
class _$PreferencesResponseCopyWithImpl<$Res>
    implements $PreferencesResponseCopyWith<$Res> {
  _$PreferencesResponseCopyWithImpl(this._value, this._then);

  final PreferencesResponse _value;
  // ignore: unused_field
  final $Res Function(PreferencesResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as Preferences,
    ));
  }

  @override
  $PreferencesCopyWith<$Res> get responseData {
    return $PreferencesCopyWith<$Res>(_value.responseData, (value) {
      return _then(_value.copyWith(responseData: value));
    });
  }
}

/// @nodoc
abstract class _$PreferencesResponseCopyWith<$Res>
    implements $PreferencesResponseCopyWith<$Res> {
  factory _$PreferencesResponseCopyWith(_PreferencesResponse value,
          $Res Function(_PreferencesResponse) then) =
      __$PreferencesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool status, @JsonKey(name: "response_data") Preferences responseData});

  @override
  $PreferencesCopyWith<$Res> get responseData;
}

/// @nodoc
class __$PreferencesResponseCopyWithImpl<$Res>
    extends _$PreferencesResponseCopyWithImpl<$Res>
    implements _$PreferencesResponseCopyWith<$Res> {
  __$PreferencesResponseCopyWithImpl(
      _PreferencesResponse _value, $Res Function(_PreferencesResponse) _then)
      : super(_value, (v) => _then(v as _PreferencesResponse));

  @override
  _PreferencesResponse get _value => super._value as _PreferencesResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_PreferencesResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as Preferences,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PreferencesResponse implements _PreferencesResponse {
  _$_PreferencesResponse(
      {required this.status,
      @JsonKey(name: "response_data") required this.responseData});

  factory _$_PreferencesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PreferencesResponseFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: "response_data")
  final Preferences responseData;

  @override
  String toString() {
    return 'PreferencesResponse(status: $status, responseData: $responseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferencesResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.responseData, responseData) ||
                const DeepCollectionEquality()
                    .equals(other.responseData, responseData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(responseData);

  @JsonKey(ignore: true)
  @override
  _$PreferencesResponseCopyWith<_PreferencesResponse> get copyWith =>
      __$PreferencesResponseCopyWithImpl<_PreferencesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreferencesResponseToJson(this);
  }
}

abstract class _PreferencesResponse implements PreferencesResponse {
  factory _PreferencesResponse(
          {required bool status,
          @JsonKey(name: "response_data") required Preferences responseData}) =
      _$_PreferencesResponse;

  factory _PreferencesResponse.fromJson(Map<String, dynamic> json) =
      _$_PreferencesResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "response_data")
  Preferences get responseData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreferencesResponseCopyWith<_PreferencesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

IdResponseData _$IdResponseDataFromJson(Map<String, dynamic> json) {
  return _IdResponseData.fromJson(json);
}

/// @nodoc
class _$IdResponseDataTearOff {
  const _$IdResponseDataTearOff();

  _IdResponseData call(
      {@JsonKey(name: "user_id_type") required String userIdType,
      @JsonKey(name: "front_view") required String frontView,
      @JsonKey(name: "back_view") required String backView}) {
    return _IdResponseData(
      userIdType: userIdType,
      frontView: frontView,
      backView: backView,
    );
  }

  IdResponseData fromJson(Map<String, Object> json) {
    return IdResponseData.fromJson(json);
  }
}

/// @nodoc
const $IdResponseData = _$IdResponseDataTearOff();

/// @nodoc
mixin _$IdResponseData {
  @JsonKey(name: "user_id_type")
  String get userIdType => throw _privateConstructorUsedError;
  @JsonKey(name: "front_view")
  String get frontView => throw _privateConstructorUsedError;
  @JsonKey(name: "back_view")
  String get backView => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdResponseDataCopyWith<IdResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdResponseDataCopyWith<$Res> {
  factory $IdResponseDataCopyWith(
          IdResponseData value, $Res Function(IdResponseData) then) =
      _$IdResponseDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "user_id_type") String userIdType,
      @JsonKey(name: "front_view") String frontView,
      @JsonKey(name: "back_view") String backView});
}

/// @nodoc
class _$IdResponseDataCopyWithImpl<$Res>
    implements $IdResponseDataCopyWith<$Res> {
  _$IdResponseDataCopyWithImpl(this._value, this._then);

  final IdResponseData _value;
  // ignore: unused_field
  final $Res Function(IdResponseData) _then;

  @override
  $Res call({
    Object? userIdType = freezed,
    Object? frontView = freezed,
    Object? backView = freezed,
  }) {
    return _then(_value.copyWith(
      userIdType: userIdType == freezed
          ? _value.userIdType
          : userIdType // ignore: cast_nullable_to_non_nullable
              as String,
      frontView: frontView == freezed
          ? _value.frontView
          : frontView // ignore: cast_nullable_to_non_nullable
              as String,
      backView: backView == freezed
          ? _value.backView
          : backView // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IdResponseDataCopyWith<$Res>
    implements $IdResponseDataCopyWith<$Res> {
  factory _$IdResponseDataCopyWith(
          _IdResponseData value, $Res Function(_IdResponseData) then) =
      __$IdResponseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "user_id_type") String userIdType,
      @JsonKey(name: "front_view") String frontView,
      @JsonKey(name: "back_view") String backView});
}

/// @nodoc
class __$IdResponseDataCopyWithImpl<$Res>
    extends _$IdResponseDataCopyWithImpl<$Res>
    implements _$IdResponseDataCopyWith<$Res> {
  __$IdResponseDataCopyWithImpl(
      _IdResponseData _value, $Res Function(_IdResponseData) _then)
      : super(_value, (v) => _then(v as _IdResponseData));

  @override
  _IdResponseData get _value => super._value as _IdResponseData;

  @override
  $Res call({
    Object? userIdType = freezed,
    Object? frontView = freezed,
    Object? backView = freezed,
  }) {
    return _then(_IdResponseData(
      userIdType: userIdType == freezed
          ? _value.userIdType
          : userIdType // ignore: cast_nullable_to_non_nullable
              as String,
      frontView: frontView == freezed
          ? _value.frontView
          : frontView // ignore: cast_nullable_to_non_nullable
              as String,
      backView: backView == freezed
          ? _value.backView
          : backView // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IdResponseData implements _IdResponseData {
  _$_IdResponseData(
      {@JsonKey(name: "user_id_type") required this.userIdType,
      @JsonKey(name: "front_view") required this.frontView,
      @JsonKey(name: "back_view") required this.backView});

  factory _$_IdResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_IdResponseDataFromJson(json);

  @override
  @JsonKey(name: "user_id_type")
  final String userIdType;
  @override
  @JsonKey(name: "front_view")
  final String frontView;
  @override
  @JsonKey(name: "back_view")
  final String backView;

  @override
  String toString() {
    return 'IdResponseData(userIdType: $userIdType, frontView: $frontView, backView: $backView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdResponseData &&
            (identical(other.userIdType, userIdType) ||
                const DeepCollectionEquality()
                    .equals(other.userIdType, userIdType)) &&
            (identical(other.frontView, frontView) ||
                const DeepCollectionEquality()
                    .equals(other.frontView, frontView)) &&
            (identical(other.backView, backView) ||
                const DeepCollectionEquality()
                    .equals(other.backView, backView)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userIdType) ^
      const DeepCollectionEquality().hash(frontView) ^
      const DeepCollectionEquality().hash(backView);

  @JsonKey(ignore: true)
  @override
  _$IdResponseDataCopyWith<_IdResponseData> get copyWith =>
      __$IdResponseDataCopyWithImpl<_IdResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdResponseDataToJson(this);
  }
}

abstract class _IdResponseData implements IdResponseData {
  factory _IdResponseData(
          {@JsonKey(name: "user_id_type") required String userIdType,
          @JsonKey(name: "front_view") required String frontView,
          @JsonKey(name: "back_view") required String backView}) =
      _$_IdResponseData;

  factory _IdResponseData.fromJson(Map<String, dynamic> json) =
      _$_IdResponseData.fromJson;

  @override
  @JsonKey(name: "user_id_type")
  String get userIdType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "front_view")
  String get frontView => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "back_view")
  String get backView => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdResponseDataCopyWith<_IdResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

IdResponse _$IdResponseFromJson(Map<String, dynamic> json) {
  return _IdResponse.fromJson(json);
}

/// @nodoc
class _$IdResponseTearOff {
  const _$IdResponseTearOff();

  _IdResponse call(
      {required bool status,
      @JsonKey(name: "response_data") required IdResponseData responseData}) {
    return _IdResponse(
      status: status,
      responseData: responseData,
    );
  }

  IdResponse fromJson(Map<String, Object> json) {
    return IdResponse.fromJson(json);
  }
}

/// @nodoc
const $IdResponse = _$IdResponseTearOff();

/// @nodoc
mixin _$IdResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "response_data")
  IdResponseData get responseData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdResponseCopyWith<IdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdResponseCopyWith<$Res> {
  factory $IdResponseCopyWith(
          IdResponse value, $Res Function(IdResponse) then) =
      _$IdResponseCopyWithImpl<$Res>;
  $Res call(
      {bool status,
      @JsonKey(name: "response_data") IdResponseData responseData});

  $IdResponseDataCopyWith<$Res> get responseData;
}

/// @nodoc
class _$IdResponseCopyWithImpl<$Res> implements $IdResponseCopyWith<$Res> {
  _$IdResponseCopyWithImpl(this._value, this._then);

  final IdResponse _value;
  // ignore: unused_field
  final $Res Function(IdResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as IdResponseData,
    ));
  }

  @override
  $IdResponseDataCopyWith<$Res> get responseData {
    return $IdResponseDataCopyWith<$Res>(_value.responseData, (value) {
      return _then(_value.copyWith(responseData: value));
    });
  }
}

/// @nodoc
abstract class _$IdResponseCopyWith<$Res> implements $IdResponseCopyWith<$Res> {
  factory _$IdResponseCopyWith(
          _IdResponse value, $Res Function(_IdResponse) then) =
      __$IdResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool status,
      @JsonKey(name: "response_data") IdResponseData responseData});

  @override
  $IdResponseDataCopyWith<$Res> get responseData;
}

/// @nodoc
class __$IdResponseCopyWithImpl<$Res> extends _$IdResponseCopyWithImpl<$Res>
    implements _$IdResponseCopyWith<$Res> {
  __$IdResponseCopyWithImpl(
      _IdResponse _value, $Res Function(_IdResponse) _then)
      : super(_value, (v) => _then(v as _IdResponse));

  @override
  _IdResponse get _value => super._value as _IdResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_IdResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as IdResponseData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IdResponse implements _IdResponse {
  _$_IdResponse(
      {required this.status,
      @JsonKey(name: "response_data") required this.responseData});

  factory _$_IdResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IdResponseFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: "response_data")
  final IdResponseData responseData;

  @override
  String toString() {
    return 'IdResponse(status: $status, responseData: $responseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.responseData, responseData) ||
                const DeepCollectionEquality()
                    .equals(other.responseData, responseData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(responseData);

  @JsonKey(ignore: true)
  @override
  _$IdResponseCopyWith<_IdResponse> get copyWith =>
      __$IdResponseCopyWithImpl<_IdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdResponseToJson(this);
  }
}

abstract class _IdResponse implements IdResponse {
  factory _IdResponse(
      {required bool status,
      @JsonKey(name: "response_data")
          required IdResponseData responseData}) = _$_IdResponse;

  factory _IdResponse.fromJson(Map<String, dynamic> json) =
      _$_IdResponse.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "response_data")
  IdResponseData get responseData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdResponseCopyWith<_IdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

IdType _$IdTypeFromJson(Map<String, dynamic> json) {
  return _IdType.fromJson(json);
}

/// @nodoc
class _$IdTypeTearOff {
  const _$IdTypeTearOff();

  _IdType call(
      {required String uid,
      @JsonKey(name: "id_type") required String name,
      required String country}) {
    return _IdType(
      uid: uid,
      name: name,
      country: country,
    );
  }

  IdType fromJson(Map<String, Object> json) {
    return IdType.fromJson(json);
  }
}

/// @nodoc
const $IdType = _$IdTypeTearOff();

/// @nodoc
mixin _$IdType {
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "id_type")
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdTypeCopyWith<IdType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdTypeCopyWith<$Res> {
  factory $IdTypeCopyWith(IdType value, $Res Function(IdType) then) =
      _$IdTypeCopyWithImpl<$Res>;
  $Res call(
      {String uid, @JsonKey(name: "id_type") String name, String country});
}

/// @nodoc
class _$IdTypeCopyWithImpl<$Res> implements $IdTypeCopyWith<$Res> {
  _$IdTypeCopyWithImpl(this._value, this._then);

  final IdType _value;
  // ignore: unused_field
  final $Res Function(IdType) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IdTypeCopyWith<$Res> implements $IdTypeCopyWith<$Res> {
  factory _$IdTypeCopyWith(_IdType value, $Res Function(_IdType) then) =
      __$IdTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid, @JsonKey(name: "id_type") String name, String country});
}

/// @nodoc
class __$IdTypeCopyWithImpl<$Res> extends _$IdTypeCopyWithImpl<$Res>
    implements _$IdTypeCopyWith<$Res> {
  __$IdTypeCopyWithImpl(_IdType _value, $Res Function(_IdType) _then)
      : super(_value, (v) => _then(v as _IdType));

  @override
  _IdType get _value => super._value as _IdType;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_IdType(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IdType implements _IdType {
  _$_IdType(
      {required this.uid,
      @JsonKey(name: "id_type") required this.name,
      required this.country});

  factory _$_IdType.fromJson(Map<String, dynamic> json) =>
      _$_$_IdTypeFromJson(json);

  @override
  final String uid;
  @override
  @JsonKey(name: "id_type")
  final String name;
  @override
  final String country;

  @override
  String toString() {
    return 'IdType(uid: $uid, name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdType &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$IdTypeCopyWith<_IdType> get copyWith =>
      __$IdTypeCopyWithImpl<_IdType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdTypeToJson(this);
  }
}

abstract class _IdType implements IdType {
  factory _IdType(
      {required String uid,
      @JsonKey(name: "id_type") required String name,
      required String country}) = _$_IdType;

  factory _IdType.fromJson(Map<String, dynamic> json) = _$_IdType.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "id_type")
  String get name => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdTypeCopyWith<_IdType> get copyWith => throw _privateConstructorUsedError;
}
