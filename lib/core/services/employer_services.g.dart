// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employer_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _EmployerClient implements EmployerClient {
  _EmployerClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://198.23.196.159:8000/api/auth';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<String> register(map) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map);
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/employer-register',
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
