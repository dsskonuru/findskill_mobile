// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoLink _$_$_VideoLinkFromJson(Map<String, dynamic> json) {
  return _$_VideoLink(
    video: json['video'] as String,
  );
}

Map<String, dynamic> _$_$_VideoLinkToJson(_$_VideoLink instance) =>
    <String, dynamic>{
      'video': instance.video,
    };

_$_VideoResponse _$_$_VideoResponseFromJson(Map<String, dynamic> json) {
  return _$_VideoResponse(
    status: json['status'] as bool,
    user: json['user'] as String,
    video: json['video'] as String,
  );
}

Map<String, dynamic> _$_$_VideoResponseToJson(_$_VideoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user,
      'video': instance.video,
    };
