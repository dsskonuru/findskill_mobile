import 'package:auto_route/auto_route.dart';

import '../../features/job-seeker-module/presentation/account_settings/pages/account_settings_page.dart';
import '../../features/job-seeker-module/presentation/contact_information/pages/contact_information_page.dart';
import '../../features/job-seeker-module/presentation/edit_profile/pages/edit_profile_page.dart';
import '../../features/job-seeker-module/presentation/home/pages/home_page.dart';
import '../../features/job-seeker-module/presentation/home/pages/under_processing_page.dart';
import '../../features/job-seeker-module/presentation/job_preferences/pages/job_preferences_page.dart';
import '../../features/job-seeker-module/presentation/notifications/pages/notifications_page.dart';
import '../../features/job-seeker-module/presentation/refer-and-earn/pages/refer_and_earn_page.dart';
import '../../features/job-seeker-module/presentation/scan_your_id/pages/scan_your_id_page.dart';
import '../../features/job-seeker-module/presentation/skills_choice/pages/skills_choice_page.dart';
import '../../features/job-seeker-module/presentation/video/pages/sample_video_page.dart';
import '../../features/job-seeker-module/presentation/video/pages/video_capture_page.dart';
import '../../features/job-seeker-module/presentation/video/pages/video_preview_page.dart';
import '../../features/job-seeker-module/presentation/video/pages/video_trimmer_page.dart';
import '../../features/login/presentation/pages/login_page.dart';
import '../../features/onboarding/presentation/pages/intro_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/registration/presentation/pages/otp_verification_page.dart';
import '../../features/registration/presentation/pages/registration_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnboardingPage, path: "/", initial: true),
    AutoRoute(page: IntroPage, path: "/intro"),
    AutoRoute(page: LoginPage, path: "/login"),
    AutoRoute(page: RegistrationPage, path: "/registration"),
    AutoRoute(page: OtpFormPage, path: "/otp-verification"),
    // * Job Seeker Router
    AutoRoute(
      name: "JobSeekerRouter",
      page: EmptyRouterPage,
      path: "/job-seeker",
      children: [
        // * Video Router
        AutoRoute(
          name: "VideoRouter",
          page: EmptyRouterPage,
          path: "video",
          children: [
            AutoRoute(page: SampleVideoPage, path: "sample", initial: true),
            AutoRoute(page: VideoCapturePage, path: "capture"),
            AutoRoute(page: VideoTrimmerPage, path: "trim"),
            AutoRoute(page: VideoPreviewPage, path: "preview"),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(page: AccountSettingsPage, path: "account-settings"),
        AutoRoute(page: ContactInformationPage, path: "contact-information"),
        AutoRoute(page: EditProfilePage, path: "edit-profile"),
        AutoRoute(page: HomePage, path: "home", initial: true,),
        AutoRoute(page: JobPreferencesPage, path: "job-preferences"),
        AutoRoute(page: NotificationsPage, path: "notifications"),
        AutoRoute(page: ReferAndEarnPage, path: "refer-and-earn"),
        AutoRoute(page: ScanYourIdPage, path: "scan-your-id"),
        AutoRoute(page: SkillsChoicePage, path: "skills-choice"),
        // AutoRoute(page: NoticePage, path: "notice"), 
        AutoRoute(page: UnderProcessingPage, path: "under-processing"),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class $AppRouter {}
