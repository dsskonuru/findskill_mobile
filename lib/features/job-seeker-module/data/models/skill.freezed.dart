// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'skill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

SkillsList _$SkillsListFromJson(Map<String, dynamic> json) {
  return _SkillsList.fromJson(json);
}

/// @nodoc
class _$SkillsListTearOff {
  const _$SkillsListTearOff();

  _SkillsList call({required List<Skill> list}) {
    return _SkillsList(
      list: list,
    );
  }

  SkillsList fromJson(Map<String, Object> json) {
    return SkillsList.fromJson(json);
  }
}

/// @nodoc
const $SkillsList = _$SkillsListTearOff();

/// @nodoc
mixin _$SkillsList {
  List<Skill> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsListCopyWith<SkillsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsListCopyWith<$Res> {
  factory $SkillsListCopyWith(
          SkillsList value, $Res Function(SkillsList) then) =
      _$SkillsListCopyWithImpl<$Res>;
  $Res call({List<Skill> list});
}

/// @nodoc
class _$SkillsListCopyWithImpl<$Res> implements $SkillsListCopyWith<$Res> {
  _$SkillsListCopyWithImpl(this._value, this._then);

  final SkillsList _value;
  // ignore: unused_field
  final $Res Function(SkillsList) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ));
  }
}

/// @nodoc
abstract class _$SkillsListCopyWith<$Res> implements $SkillsListCopyWith<$Res> {
  factory _$SkillsListCopyWith(
          _SkillsList value, $Res Function(_SkillsList) then) =
      __$SkillsListCopyWithImpl<$Res>;
  @override
  $Res call({List<Skill> list});
}

/// @nodoc
class __$SkillsListCopyWithImpl<$Res> extends _$SkillsListCopyWithImpl<$Res>
    implements _$SkillsListCopyWith<$Res> {
  __$SkillsListCopyWithImpl(
      _SkillsList _value, $Res Function(_SkillsList) _then)
      : super(_value, (v) => _then(v as _SkillsList));

  @override
  _SkillsList get _value => super._value as _SkillsList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_SkillsList(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SkillsList implements _SkillsList {
  _$_SkillsList({required this.list});

  factory _$_SkillsList.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillsListFromJson(json);

  @override
  final List<Skill> list;

  @override
  String toString() {
    return 'SkillsList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillsList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$SkillsListCopyWith<_SkillsList> get copyWith =>
      __$SkillsListCopyWithImpl<_SkillsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillsListToJson(this);
  }
}

abstract class _SkillsList implements SkillsList {
  factory _SkillsList({required List<Skill> list}) = _$_SkillsList;

  factory _SkillsList.fromJson(Map<String, dynamic> json) =
      _$_SkillsList.fromJson;

  @override
  List<Skill> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillsListCopyWith<_SkillsList> get copyWith =>
      throw _privateConstructorUsedError;
}
