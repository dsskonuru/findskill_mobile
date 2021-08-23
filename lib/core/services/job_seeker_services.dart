import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:findskill/core/network/dio_connectivity_request_retrier.dart';
import 'package:findskill/core/network/retry_interceptor.dart';
import 'package:findskill/features/job-seeker-module/data/models/job_type_list.dart';
import 'package:findskill/features/job-seeker-module/data/models/jobseeker_profile.dart';
import 'package:findskill/features/job-seeker-module/data/models/skill_update.dart';
import 'package:findskill/features/job-seeker-module/data/models/video_update.dart';
import 'package:findskill/features/registration/data/models/skills.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

part 'job_seeker_services.g.dart';

@RestApi(baseUrl: "http://198.23.196.159:8000/")
abstract class JobseekerClient {
  factory JobseekerClient(Dio dio, {String baseUrl}) = _JobseekerClient;

  @GET("/skill-category-list?language={languageCode}")
  Future<List<SkillCategoryResponse>> skillCategories(
    @Path("languageCode") String languageCode,
  );

  @GET("/skill-sub-category-list?language={languageCode}&category={categoryId}")
  Future<List<Skill>> skillSubCategories(
    @Path("languageCode") String languageCode,
    @Path("categoryId") String categoryId,
  );

  @POST("/jobseeker-video-update")
  Future<VideoResponse> createVideo(
    @Header("Authorization") String token,
    @Body() VideoLink videoLink,
  );

  @PUT("/jobseeker-video-update")
  Future<VideoResponse> updateVideo(
    @Header("Authorization") String token,
    @Body() VideoLink videoLink,
  );

  @PUT("/jobseeker-skill-update")
  Future<SkillsResponse> updateSkills(
    @Header("Authorization") String token,
    @Body() Skills skills,
  );

  @GET("/jobseeker-profile")
  Future<JobseekerProfileResponse> profile(
    @Header("Authorization") String token,
  );

  @GET("/job-type-list")
  Future<JobTypeList> getJobTypeList();

  // @PUT("/jobseeker-id-update")
  // @MultiPart()
  // Future<Map> idUpdate(
  //   @Header("Authorization") String token,
  //   @Part(name: "user_id_type") String idType,
  //   @Part(contentType: "image/png", name: "front_view") File frontView,
  //   @Part(contentType: "image/png", name: "back_view") File backView,
  // );
}

final jobseekerClientProvider = Provider<JobseekerClient>(
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
    final client = JobseekerClient(dio);
    return client;
  },
);
