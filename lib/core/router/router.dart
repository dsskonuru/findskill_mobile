import 'package:auto_route/auto_route.dart';

import '../../features/onboarding/presentation/pages/intro_page.dart';
import '../../features/onboarding/presentation/pages/language_page.dart';
import '../../features/onboarding/presentation/pages/sample_video_page.dart';
import '../../features/registration/presentation/pages/registration_page.dart';
import '../../features/video_capture/presentation/pages/video_capture_page.dart';
import '../../features/video_capture/presentation/pages/video_preview_page.dart';
import '../../features/video_capture/presentation/pages/video_trimmer_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      name: "OnBoardingRouter",
      page: EmptyRouterPage,
      path: "/",
      children: [
        AutoRoute(page: LanguagePage, path: "language", initial: true),
        AutoRoute(page: IntroPage, path: "intro"),
        AutoRoute(page: SampleVideoPage, path: "sample"),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      name: "VideoRouter",
      page: EmptyRouterPage,
      path: "/video",
      children: [
        AutoRoute(page: VideoCapturePage, path: "capture", initial: true),
        AutoRoute(page: VideoTrimmerPage, path: "trim"),
        AutoRoute(page: VideoPreviewPage, path: "preview"),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(page: RegistrationPage, path: "/registration"),
  ],
)
class $AppRouter {}
