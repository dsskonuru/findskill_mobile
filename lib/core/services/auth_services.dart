import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../../../features/onboarding/data/models/language.dart';
import '../../../features/registration/data/models/registration.dart';
import '../../features/job-seeker-module/data/models/jobseeker_module.dart';
import '../../features/onboarding/data/models/user_login.dart';
import '../network/dio_connectivity_request_retrier.dart';
import '../network/retry_interceptor.dart';

part 'auth_services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/api/auth")
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST("/user-register")
  Future<AuthResponse> register(@Body() Registration registration);

  @POST("/login")
  Future<LoginResponse> login(@Body() UserLogin userLogin);

  @GET("/language-list")
  Future<LanguagesList> getLanguagesList();

  @GET("/id-types-list")
  Future<List<IdType>> getIdTypes(@Header("Authorization") String token);

  @GET("/static-string?language={languageCode}") // Language JSON
  Future<String> getLanguageMap(@Path("languageCode") String languageCode);

  @PUT("/otp-verification")
  Future<AuthResponse> otpVerification(@Body() OtpVerification otpVerification);

  @GET("/logout")
  Future<AuthResponse> logout(@Header("Authorization") String token);
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
