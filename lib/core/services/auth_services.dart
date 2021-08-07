import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../../features/onboarding/data/models/language.dart';
import '../network/dio_connectivity_request_retrier.dart';
import '../network/retry_interceptor.dart';

part 'auth_services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/api/auth")
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @GET("/language-list")
  Future<LanguagesList> getLanguagesList();

  @GET("/static-string?language={languageCode}") // Language JSON
  Future<String> getLanguageMap(@Path("languageCode") String languageCode);

  @PUT("/otp-verification")
  Future<String> otpVerification(@Body() Map<String, dynamic> map);

  @POST("/login")
  Future<String> login(@Body() Map<String, dynamic> map);

  @GET("/logout")
  Future<String> logout(@Body() Map<String, dynamic> map);

  @POST("//update-static-string")
  Future<String> updateStaticString(@Body() Map<String, dynamic> map);
}

final authClientProvider = Provider<AuthClient>(
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
    final client = AuthClient(dio);
    return client;
  },
);
