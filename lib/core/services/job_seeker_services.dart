import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../../features/job-seeker-module/data/models/skill.dart';
import '../../features/job-seeker-module/data/models/skill_category.dart';
import '../network/dio_connectivity_request_retrier.dart';
import '../network/retry_interceptor.dart';

part 'job_seeker_services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/")
abstract class JobSeekerClient {
  factory JobSeekerClient(Dio dio, {String baseUrl}) = _JobSeekerClient;

  @GET("/skill-category-list?language={languageCode}")
  Future<List<SkillCategory>> skillCategories(
    @Path("languageCode") String languageCode,
  );

  @GET("/skill-sub-category-list?language={languageCode}&category={categoryId}")
  Future<List<Skill>> skillSubCategories(
    @Path("languageCode") String languageCode,
    @Path("categoryId") String categoryId,
  );

  @POST("/jobseeker-register")
  Future<String> register(
    @Body() Map<String, dynamic> map,
  );

  @GET("/jobseeker-profile")
  Future<String> profile(
    @Body() Map<String, dynamic> map,
  );

  @PUT("/jobseeker-profile-update")
  Future<String> profileUpdate(
    @Body() Map<String, dynamic> map,
  );

  @POST("/jobseeker-list?language={languageCode}&skill={skillId}")
  Future<String> updateStaticString(
    @Path("languageCode") String languageCode,
    @Path("categoryId") String categoryId,
    @Body() Map<String, dynamic> map,
  );
}

final jobSeekerClientProvider = Provider<JobSeekerClient>(
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
    final client = JobSeekerClient(dio);
    return client;
  },
);
