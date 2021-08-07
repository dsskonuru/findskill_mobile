import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../network/dio_connectivity_request_retrier.dart';
import '../network/retry_interceptor.dart';

part 'employer_services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/api/auth")
abstract class EmployerClient {
  factory EmployerClient(Dio dio, {String baseUrl}) = _EmployerClient;

  @POST("/employer-register")
  Future<String> register(
    @Body() Map<String, dynamic> map,
  );

}

final employerClientProvider = Provider<EmployerClient>(
  (ref) {
    final dio = Dio();
    dio.options.headers["Demo-Header"] = "demo header";
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
    final client = EmployerClient(dio);
    return client;
  },
);
