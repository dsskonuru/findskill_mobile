import 'package:auto_route/auto_route.dart';

import '../../features/job-seeker-module/home/presentation/pages/notice_page.dart';
import '../../features/job-seeker-module/home/presentation/pages/under_processing_page.dart';
import '../../features/job-seeker-module/registration/presentation/pages/jobs_category_page.dart';
import '../../features/job-seeker-module/registration/presentation/pages/js_registration_page.dart';
import '../../features/job-seeker-module/registration/presentation/pages/otp_verification_page.dart';
import '../../features/job-seeker-module/video-capture/presentation/pages/video_capture_page.dart';
import '../../features/job-seeker-module/video-capture/presentation/pages/video_preview_page.dart';
import '../../features/job-seeker-module/video-capture/presentation/pages/video_trimmer_page.dart';
import '../../features/login/presentation/pages/login_page.dart';
import '../../features/onboarding/presentation/pages/intro_page.dart';
import '../../features/onboarding/presentation/pages/language_page.dart';
import '../../features/onboarding/presentation/pages/sample_video_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      name: "OnboardingRouter",
      page: EmptyRouterPage,
      path: "/",
      children: [
        AutoRoute(page: LanguagePage, path: "language", initial: true),
        AutoRoute(page: IntroPage, path: "Onboarding"),
        AutoRoute(page: SampleVideoPage, path: "sample"),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      name: "JobSeekerRouter",
      page: EmptyRouterPage,
      path: "/job-seeker",
      children: [
        AutoRoute(
          name: "VideoRouter",
          page: EmptyRouterPage,
          path: "video",
          initial: true,
          children: [
            AutoRoute(page: VideoCapturePage, path: "capture", initial: true),
            AutoRoute(page: VideoTrimmerPage, path: "trim"),
            AutoRoute(page: VideoPreviewPage, path: "preview"),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          name: "RegistrationRouter",
          page: EmptyRouterPage,
          path: "registration",
          initial: true,
          children: [
            AutoRoute(
              page: JobSeekerRegistrationPage,
              path: "js",
              initial: true,
            ),
            AutoRoute(page: OtpVerificationPage, path: "otpVerification"),
            AutoRoute(page: JobsCategoryPage, path: "skills"),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(page: UnderProcessingPage, path: "under-processing"),
        AutoRoute(page: NoticePage, path: "notice"),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(page: LoginPage, path: "/login"), // ! Check if primarily JS / Emp
  ],
)
class $AppRouter {}
