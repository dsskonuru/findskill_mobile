// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'skill_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

SkillCategoriesList _$SkillCategoriesListFromJson(Map<String, dynamic> json) {
  return _SkillCategoriesList.fromJson(json);
}

/// @nodoc
class _$SkillCategoriesListTearOff {
  const _$SkillCategoriesListTearOff();

  _SkillCategoriesList call({required List<SkillCategory> list}) {
    return _SkillCategoriesList(
      list: list,
    );
  }

  SkillCategoriesList fromJson(Map<String, Object> json) {
    return SkillCategoriesList.fromJson(json);
  }
}

/// @nodoc
const $SkillCategoriesList = _$SkillCategoriesListTearOff();

/// @nodoc
mixin _$SkillCategoriesList {
  List<SkillCategory> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCategoriesListCopyWith<SkillCategoriesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCategoriesListCopyWith<$Res> {
  factory $SkillCategoriesListCopyWith(
          SkillCategoriesList value, $Res Function(SkillCategoriesList) then) =
      _$SkillCategoriesListCopyWithImpl<$Res>;
  $Res call({List<SkillCategory> list});
}

/// @nodoc
class _$SkillCategoriesListCopyWithImpl<$Res>
    implements $SkillCategoriesListCopyWith<$Res> {
  _$SkillCategoriesListCopyWithImpl(this._value, this._then);

  final SkillCategoriesList _value;
  // ignore: unused_field
  final $Res Function(SkillCategoriesList) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SkillCategory>,
    ));
  }
}

/// @nodoc
abstract class _$SkillCategoriesListCopyWith<$Res>
    implements $SkillCategoriesListCopyWith<$Res> {
  factory _$SkillCategoriesListCopyWith(_SkillCategoriesList value,
          $Res Function(_SkillCategoriesList) then) =
      __$SkillCategoriesListCopyWithImpl<$Res>;
  @override
  $Res call({List<SkillCategory> list});
}

/// @nodoc
class __$SkillCategoriesListCopyWithImpl<$Res>
    extends _$SkillCategoriesListCopyWithImpl<$Res>
    implements _$SkillCategoriesListCopyWith<$Res> {
  __$SkillCategoriesListCopyWithImpl(
      _SkillCategoriesList _value, $Res Function(_SkillCategoriesList) _then)
      : super(_value, (v) => _then(v as _SkillCategoriesList));

  @override
  _SkillCategoriesList get _value => super._value as _SkillCategoriesList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_SkillCategoriesList(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SkillCategory>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SkillCategoriesList implements _SkillCategoriesList {
  _$_SkillCategoriesList({required this.list});

  factory _$_SkillCategoriesList.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillCategoriesListFromJson(json);

  @override
  final List<SkillCategory> list;

  @override
  String toString() {
    return 'SkillCategoriesList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SkillCategoriesList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$SkillCategoriesListCopyWith<_SkillCategoriesList> get copyWith =>
      __$SkillCategoriesListCopyWithImpl<_SkillCategoriesList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillCategoriesListToJson(this);
  }
}

abstract class _SkillCategoriesList implements SkillCategoriesList {
  factory _SkillCategoriesList({required List<SkillCategory> list}) =
      _$_SkillCategoriesList;

  factory _SkillCategoriesList.fromJson(Map<String, dynamic> json) =
      _$_SkillCategoriesList.fromJson;

  @override
  List<SkillCategory> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillCategoriesListCopyWith<_SkillCategoriesList> get copyWith =>
      throw _privateConstructorUsedError;
}
