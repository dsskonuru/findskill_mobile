import 'package:auto_route/auto_route.dart';
import 'package:find_skill/features/onboarding/presentation/pages/intro_page.dart';
import 'package:find_skill/features/onboarding/presentation/pages/sample_video_page.dart';
import 'package:find_skill/features/video_capture/presentation/pages/camera_page.dart';

import '../../features/onboarding/presentation/pages/language_page.dart';
import '../../features/registration/presentation/pages/registration_page.dart';

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
    AutoRoute(page: VideoCapturePage, path: "/video-capture"),
    AutoRoute(page: RegistrationPage, path: "/registration"),
  ],
)
class $AppRouter {}
