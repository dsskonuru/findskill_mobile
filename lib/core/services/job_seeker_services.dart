import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

import '../../features/job-seeker-module/data/models/jobseeker_module.dart';
import '../../features/job-seeker-module/data/models/jobseeker_profile.dart';
import '../network/dio_connectivity_request_retrier.dart';
import '../network/retry_interceptor.dart';

part 'job_seeker_services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/")
abstract class JobseekerClient {
  factory JobseekerClient(Dio dio, {String baseUrl}) = _JobseekerClient;

  @POST("/jobseeker-video-update")
  Future<VideoResponse> createVideo(
    @Header("Authorization") String token,
    @Body() String video,
  );

  @PUT("/jobseeker-video-update")
  Future<VideoResponse> updateVideo(
    @Header("Authorization") String token,
    @Body() String video,
  );

  @GET("/skill-category-list?language={languageCode}")
  Future<List<SkillCategory>> skillCategories(
    @Path("languageCode") String languageCode,
  );

  @GET("/skill-sub-category-list?language={languageCode}&category={categoryId}")
  Future<List<Skill>> skillSubCategories(
    @Path("languageCode") String languageCode,
    @Path("categoryId") String categoryId,
  );

  @PUT("/jobseeker-skill-update")
  Future<SkillsResponse> updateSkills(
    @Header("Authorization") String token,
    @Body() SkillsUpdate skill,
  );

  @GET("/job-type-list")
  Future<JobTypes> getJobTypes();

  @PUT("/job-preference-update")
  Future<PreferencesResponse> updatePreferences(
    @Header("Authorization") String token,
    @Body() Preferences preferences,
  );

  @MultiPart()
  @PUT("/jobseeker-id-update")
  Future<IdResponse> updateId(
    @Header("Authorization") String token,
    @Part(name: "user_id_type") String idType,
    @Part(contentType: "image/jpeg", name: "front_view") File frontView,
    @Part(contentType: "image/jpeg", name: "back_view") File backView,
  );

  @GET("/jobseeker-profile")
  Future<JobseekerProfileResponse> profile(
    @Header("Authorization") String token,
  );
}

final jobseekerClientProvider = Provider<JobseekerClient>(
  (ref) {
    final dio = Dio();
    // dio.options.headers["Demo-Header"] = "demo header";
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
    final client = JobseekerClient(dio);
    return client;
  },
);
