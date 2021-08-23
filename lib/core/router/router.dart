import 'package:auto_route/auto_route.dart';
import 'package:findskill/features/employer_module/presentation/pages/employer_page.dart';
import 'package:findskill/features/login/presentation/pages/login_page.dart';
import 'package:findskill/features/onboarding/presentation/pages/intro_page.dart';
import 'package:findskill/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:findskill/features/registration/presentation/pages/job_preferences_page.dart';
import 'package:findskill/features/registration/presentation/pages/otp_verification_page.dart';
import 'package:findskill/features/registration/presentation/pages/registration_page.dart';
import 'package:findskill/features/registration/presentation/pages/scan_your_id_page.dart';
import 'package:findskill/features/registration/presentation/pages/skills_choice_page.dart';
import 'package:findskill/features/video/pages/sample_video_page.dart';
import 'package:findskill/features/video/pages/video_capture_page.dart';
import 'package:findskill/features/video/pages/video_preview_page.dart';
import 'package:findskill/features/video/pages/video_trimmer_page.dart';

import '../../features/job-seeker-module/presentation/jobseeker_page.dart';
import '../../features/under_processing_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(page: DummyPage, path: "/", initial: true),
    // AutoRoute(
    //   name: "FindSkillRouter",
    //   path: "/",
    //   // path: "/findSkill",
    //   page: InitWrapperPage,
    //   children: [
    AutoRoute(page: OnboardingPage, path: "/"),
    AutoRoute(page: IntroPage, path: "intro"),
    AutoRoute(page: LoginPage, path: "login"),
    AutoRoute(page: SampleVideoPage, path: "sample"),
    AutoRoute(page: VideoCapturePage, path: "capture"),
    AutoRoute(page: VideoTrimmerPage, path: "trim"),
    AutoRoute(page: VideoPreviewPage, path: "preview"),
    AutoRoute(page: RegistrationPage, path: "registration"),
    AutoRoute(page: OtpVerificationPage, path: "otp-verification"),
    AutoRoute(page: JobPreferencesPage, path: "job-preferences"),
    AutoRoute(page: ScanYourIdPage, path: "scan-your-id"),
    AutoRoute(page: SkillsChoicePage, path: "skills-choice"),
    AutoRoute(page: JobseekerPage, path: "js"),
    AutoRoute(page: EmployerPage, path: "employer"),
    AutoRoute(page: UnderProcessingPage, path: "under-processing"),
    //   ],
    // ),
  ],
)
class $AppRouter {}
