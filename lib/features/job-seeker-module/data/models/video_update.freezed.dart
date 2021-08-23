// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoLink _$VideoLinkFromJson(Map<String, dynamic> json) {
  return _VideoLink.fromJson(json);
}

/// @nodoc
class _$VideoLinkTearOff {
  const _$VideoLinkTearOff();

  _VideoLink call({required String video}) {
    return _VideoLink(
      video: video,
    );
  }

  VideoLink fromJson(Map<String, Object> json) {
    return VideoLink.fromJson(json);
  }
}

/// @nodoc
const $VideoLink = _$VideoLinkTearOff();

/// @nodoc
mixin _$VideoLink {
  String get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoLinkCopyWith<VideoLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoLinkCopyWith<$Res> {
  factory $VideoLinkCopyWith(VideoLink value, $Res Function(VideoLink) then) =
      _$VideoLinkCopyWithImpl<$Res>;
  $Res call({String video});
}

/// @nodoc
class _$VideoLinkCopyWithImpl<$Res> implements $VideoLinkCopyWith<$Res> {
  _$VideoLinkCopyWithImpl(this._value, this._then);

  final VideoLink _value;
  // ignore: unused_field
  final $Res Function(VideoLink) _then;

  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoLinkCopyWith<$Res> implements $VideoLinkCopyWith<$Res> {
  factory _$VideoLinkCopyWith(
          _VideoLink value, $Res Function(_VideoLink) then) =
      __$VideoLinkCopyWithImpl<$Res>;
  @override
  $Res call({String video});
}

/// @nodoc
class __$VideoLinkCopyWithImpl<$Res> extends _$VideoLinkCopyWithImpl<$Res>
    implements _$VideoLinkCopyWith<$Res> {
  __$VideoLinkCopyWithImpl(_VideoLink _value, $Res Function(_VideoLink) _then)
      : super(_value, (v) => _then(v as _VideoLink));

  @override
  _VideoLink get _value => super._value as _VideoLink;

  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_VideoLink(
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VideoLink implements _VideoLink {
  _$_VideoLink({required this.video});

  factory _$_VideoLink.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoLinkFromJson(json);

  @override
  final String video;

  @override
  String toString() {
    return 'VideoLink(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoLink &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(video);

  @JsonKey(ignore: true)
  @override
  _$VideoLinkCopyWith<_VideoLink> get copyWith =>
      __$VideoLinkCopyWithImpl<_VideoLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoLinkToJson(this);
  }
}

abstract class _VideoLink implements VideoLink {
  factory _VideoLink({required String video}) = _$_VideoLink;

  factory _VideoLink.fromJson(Map<String, dynamic> json) =
      _$_VideoLink.fromJson;

  @override
  String get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoLinkCopyWith<_VideoLink> get copyWith =>
      throw _privateConstructorUsedError;
}

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
