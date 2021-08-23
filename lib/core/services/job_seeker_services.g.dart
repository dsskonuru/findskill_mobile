// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_seeker_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _JobseekerClient implements JobseekerClient {
  _JobseekerClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://198.23.196.159:8000/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<SkillCategoryResponse>> skillCategories(languageCode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<SkillCategoryResponse>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(
                    _dio.options, '/skill-category-list?language=$languageCode',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            SkillCategoryResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Skill>> skillSubCategories(languageCode, categoryId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<
        List<Skill>>(Options(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra)
        .compose(_dio.options,
            '/skill-sub-category-list?language=$languageCode&category=$categoryId',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Skill.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<VideoResponse> createVideo(token, videoLink) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(videoLink.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VideoResponse>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/jobseeker-video-update',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VideoResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VideoResponse> updateVideo(token, videoLink) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(videoLink.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VideoResponse>(Options(
                method: 'PUT',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/jobseeker-video-update',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VideoResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SkillsResponse> updateSkills(token, skills) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(skills.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SkillsResponse>(Options(
                method: 'PUT',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/jobseeker-skill-update',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SkillsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<JobseekerProfileResponse> profile(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JobseekerProfileResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Authorization': token},
                extra: _extra)
            .compose(_dio.options, '/jobseeker-profile',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JobseekerProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<JobTypeList> getJobTypeList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JobTypeList>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/job-type-list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JobTypeList.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
