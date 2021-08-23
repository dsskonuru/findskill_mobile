// ignore_for_file: file_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_update.freezed.dart';
part 'video_update.g.dart';

@freezed
class VideoLink with _$VideoLink {
  @JsonSerializable(explicitToJson: true)
  factory VideoLink({
    required String video,
  }) = _VideoLink;
  factory VideoLink.fromJson(Map<String, dynamic> json) =>
      _$VideoLinkFromJson(json);
}

@freezed
class VideoResponse with _$VideoResponse {
  @JsonSerializable(explicitToJson: true)
  factory VideoResponse({
    required bool status,
    required String user,
    required String video,
  }) = _VideoResponse;
  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}
