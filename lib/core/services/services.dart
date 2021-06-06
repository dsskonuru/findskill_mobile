import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../../features/onboarding/data/models/languages_list_model.dart';
import '../network/dio_connectivity_request_retrier.dart';
import '../network/retry_interceptor.dart';

part 'services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/api/auth")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/language-list")
  Future<LanguagesListModel> getLanguages();

}

final dioClientProvider = Provider<RestClient>((ref) {
  final dio = Dio(); 
  dio.options.headers["Demo-Header"] =
      "demo header"; 
  dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
  final client = RestClient(dio);
  return client;
});

