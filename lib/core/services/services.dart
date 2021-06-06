import 'package:dio/dio.dart';
import 'package:find_skill/features/onboarding/data/models/languages_list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/api/auth")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/language-list")
  Future<LanguagesListModel> getLanguages();

}
