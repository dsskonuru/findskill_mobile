// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/employer_module/presentation/pages/employer_page.dart'
    as _i16;
import '../../features/job-seeker-module/presentation/jobseeker_page.dart'
    as _i15;
import '../../features/login/presentation/pages/login_page.dart' as _i5;
import '../../features/onboarding/presentation/pages/intro_page.dart' as _i4;
import '../../features/onboarding/presentation/pages/onboarding_page.dart'
    as _i3;
import '../../features/registration/presentation/pages/job_preferences_page.dart'
    as _i12;
import '../../features/registration/presentation/pages/otp_verification_page.dart'
    as _i11;
import '../../features/registration/presentation/pages/registration_page.dart'
    as _i10;
import '../../features/registration/presentation/pages/scan_your_id_page.dart'
    as _i13;
import '../../features/registration/presentation/pages/skills_choice_page.dart'
    as _i14;
import '../../features/under_processing_page.dart' as _i17;
import '../../features/video/pages/sample_video_page.dart' as _i6;
import '../../features/video/pages/video_capture_page.dart' as _i7;
import '../../features/video/pages/video_preview_page.dart' as _i9;
import '../../features/video/pages/video_trimmer_page.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.OnboardingPage();
        }),
    IntroRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.IntroPage();
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.LoginPage();
        }),
    SampleVideoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SampleVideoPage();
        }),
    VideoCaptureRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.VideoCapturePage();
        }),
    VideoTrimmerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.VideoTrimmerPage();
        }),
    VideoPreviewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.VideoPreviewPage();
        }),
    RegistrationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.RegistrationPage();
        }),
    OtpVerificationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.OtpVerificationPage();
        }),
    JobPreferencesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.JobPreferencesPage();
        }),
    ScanYourIdRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.ScanYourIdPage();
        }),
    SkillsChoiceRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.SkillsChoicePage();
        }),
    JobseekerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.JobseekerPage();
        }),
    EmployerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i16.EmployerPage();
        }),
    UnderProcessingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i17.UnderProcessingPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(OnboardingRoute.name, path: '/'),
        _i1.RouteConfig(IntroRoute.name, path: 'intro'),
        _i1.RouteConfig(LoginRoute.name, path: 'login'),
        _i1.RouteConfig(SampleVideoRoute.name, path: 'sample'),
        _i1.RouteConfig(VideoCaptureRoute.name, path: 'capture'),
        _i1.RouteConfig(VideoTrimmerRoute.name, path: 'trim'),
        _i1.RouteConfig(VideoPreviewRoute.name, path: 'preview'),
        _i1.RouteConfig(RegistrationRoute.name, path: 'registration'),
        _i1.RouteConfig(OtpVerificationRoute.name, path: 'otp-verification'),
        _i1.RouteConfig(JobPreferencesRoute.name, path: 'job-preferences'),
        _i1.RouteConfig(ScanYourIdRoute.name, path: 'scan-your-id'),
        _i1.RouteConfig(SkillsChoiceRoute.name, path: 'skills-choice'),
        _i1.RouteConfig(JobseekerRoute.name, path: 'js'),
        _i1.RouteConfig(EmployerRoute.name, path: 'employer'),
        _i1.RouteConfig(UnderProcessingRoute.name, path: 'under-processing')
      ];
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/');

  static const String name = 'OnboardingRoute';
}

class IntroRoute extends _i1.PageRouteInfo {
  const IntroRoute() : super(name, path: 'intro');

  static const String name = 'IntroRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: 'login');

  static const String name = 'LoginRoute';
}

class SampleVideoRoute extends _i1.PageRouteInfo {
  const SampleVideoRoute() : super(name, path: 'sample');

  static const String name = 'SampleVideoRoute';
}

class VideoCaptureRoute extends _i1.PageRouteInfo {
  const VideoCaptureRoute() : super(name, path: 'capture');

  static const String name = 'VideoCaptureRoute';
}

class VideoTrimmerRoute extends _i1.PageRouteInfo {
  const VideoTrimmerRoute() : super(name, path: 'trim');

  static const String name = 'VideoTrimmerRoute';
}

class VideoPreviewRoute extends _i1.PageRouteInfo {
  const VideoPreviewRoute() : super(name, path: 'preview');

  static const String name = 'VideoPreviewRoute';
}

class RegistrationRoute extends _i1.PageRouteInfo {
  const RegistrationRoute() : super(name, path: 'registration');

  static const String name = 'RegistrationRoute';
}

class OtpVerificationRoute extends _i1.PageRouteInfo {
  const OtpVerificationRoute() : super(name, path: 'otp-verification');

  static const String name = 'OtpVerificationRoute';
}

class JobPreferencesRoute extends _i1.PageRouteInfo {
  const JobPreferencesRoute() : super(name, path: 'job-preferences');

  static const String name = 'JobPreferencesRoute';
}

class ScanYourIdRoute extends _i1.PageRouteInfo {
  const ScanYourIdRoute() : super(name, path: 'scan-your-id');

  static const String name = 'ScanYourIdRoute';
}

class SkillsChoiceRoute extends _i1.PageRouteInfo {
  const SkillsChoiceRoute() : super(name, path: 'skills-choice');

  static const String name = 'SkillsChoiceRoute';
}

class JobseekerRoute extends _i1.PageRouteInfo {
  const JobseekerRoute() : super(name, path: 'js');

  static const String name = 'JobseekerRoute';
}

class EmployerRoute extends _i1.PageRouteInfo {
  const EmployerRoute() : super(name, path: 'employer');

  static const String name = 'EmployerRoute';
}

class UnderProcessingRoute extends _i1.PageRouteInfo {
  const UnderProcessingRoute() : super(name, path: 'under-processing');

  static const String name = 'UnderProcessingRoute';
}
