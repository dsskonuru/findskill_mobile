// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguagesList _$LanguagesListFromJson(Map<String, dynamic> json) {
  return _LanguagesList.fromJson(json);
}

/// @nodoc
class _$LanguagesListTearOff {
  const _$LanguagesListTearOff();

  _LanguagesList call(
      {@JsonKey(name: "language") required List<Language> list}) {
    return _LanguagesList(
      list: list,
    );
  }

  LanguagesList fromJson(Map<String, Object> json) {
    return LanguagesList.fromJson(json);
  }
}

/// @nodoc
const $LanguagesList = _$LanguagesListTearOff();

/// @nodoc
mixin _$LanguagesList {
  @JsonKey(name: "language")
  List<Language> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagesListCopyWith<LanguagesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesListCopyWith<$Res> {
  factory $LanguagesListCopyWith(
          LanguagesList value, $Res Function(LanguagesList) then) =
      _$LanguagesListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "language") List<Language> list});
}

/// @nodoc
class _$LanguagesListCopyWithImpl<$Res>
    implements $LanguagesListCopyWith<$Res> {
  _$LanguagesListCopyWithImpl(this._value, this._then);

  final LanguagesList _value;
  // ignore: unused_field
  final $Res Function(LanguagesList) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ));
  }
}

/// @nodoc
abstract class _$LanguagesListCopyWith<$Res>
    implements $LanguagesListCopyWith<$Res> {
  factory _$LanguagesListCopyWith(
          _LanguagesList value, $Res Function(_LanguagesList) then) =
      __$LanguagesListCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "language") List<Language> list});
}

/// @nodoc
class __$LanguagesListCopyWithImpl<$Res>
    extends _$LanguagesListCopyWithImpl<$Res>
    implements _$LanguagesListCopyWith<$Res> {
  __$LanguagesListCopyWithImpl(
      _LanguagesList _value, $Res Function(_LanguagesList) _then)
      : super(_value, (v) => _then(v as _LanguagesList));

  @override
  _LanguagesList get _value => super._value as _LanguagesList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_LanguagesList(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LanguagesList implements _LanguagesList {
  _$_LanguagesList({@JsonKey(name: "language") required this.list});

  factory _$_LanguagesList.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguagesListFromJson(json);

  @override
  @JsonKey(name: "language")
  final List<Language> list;

  @override
  String toString() {
    return 'LanguagesList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguagesList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$LanguagesListCopyWith<_LanguagesList> get copyWith =>
      __$LanguagesListCopyWithImpl<_LanguagesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguagesListToJson(this);
  }
}

abstract class _LanguagesList implements LanguagesList {
  factory _LanguagesList(
          {@JsonKey(name: "language") required List<Language> list}) =
      _$_LanguagesList;

  factory _LanguagesList.fromJson(Map<String, dynamic> json) =
      _$_LanguagesList.fromJson;

  @override
  @JsonKey(name: "language")
  List<Language> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguagesListCopyWith<_LanguagesList> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Language call(
      {required String code,
      required String name,
      @JsonKey(name: "local_name") required String localName}) {
    return _Language(
      code: code,
      name: name,
      localName: localName,
    );
  }

  Language fromJson(Map<String, Object> json) {
    return Language.fromJson(json);
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "local_name")
  String get localName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String name,
      @JsonKey(name: "local_name") String localName});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? localName = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localName: localName == freezed
          ? _value.localName
          : localName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String name,
      @JsonKey(name: "local_name") String localName});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? localName = freezed,
  }) {
    return _then(_Language(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localName: localName == freezed
          ? _value.localName
          : localName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Language implements _Language {
  _$_Language(
      {required this.code,
      required this.name,
      @JsonKey(name: "local_name") required this.localName});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  @JsonKey(name: "local_name")
  final String localName;

  @override
  String toString() {
    return 'Language(code: $code, name: $name, localName: $localName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.localName, localName) ||
                const DeepCollectionEquality()
                    .equals(other.localName, localName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(localName);

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageToJson(this);
  }
}

abstract class _Language implements Language {
  factory _Language(
      {required String code,
      required String name,
      @JsonKey(name: "local_name") required String localName}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "local_name")
  String get localName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}
