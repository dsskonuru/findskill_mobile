// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://198.23.196.159:8000/api/auth';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LanguagesList> getLanguagesList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LanguagesList>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/language-list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LanguagesList.fromJson(_result.data!);
    return value;
  }

  @override
  Future<String> getLanguageJson(languageCode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/static-string?language=$languageCode',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
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
