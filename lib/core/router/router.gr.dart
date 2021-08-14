// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/employer-module/employer_page.dart' as _i9;
import '../../features/job-seeker-module/presentation/jobseeker_page.dart'
    as _i8;
import '../../features/job-seeker-module/presentation/screens/account_settings/pages/account_settings_page.dart'
    as _i10;
import '../../features/job-seeker-module/presentation/screens/dashboard/pages/dashboard_page.dart'
    as _i12;
import '../../features/job-seeker-module/presentation/screens/dashboard/pages/under_processing_page.dart'
    as _i18;
import '../../features/job-seeker-module/presentation/screens/edit_profile/pages/edit_profile_page.dart'
    as _i11;
import '../../features/job-seeker-module/presentation/screens/edit_profile/pages/job_preferences/pages/job_preferences_page.dart'
    as _i13;
import '../../features/job-seeker-module/presentation/screens/edit_profile/pages/scan_your_id/pages/scan_your_id_page.dart'
    as _i16;
import '../../features/job-seeker-module/presentation/screens/edit_profile/pages/skills_choice/pages/skills_choice_page.dart'
    as _i17;
import '../../features/job-seeker-module/presentation/screens/notifications/pages/notifications_page.dart'
    as _i14;
import '../../features/job-seeker-module/presentation/screens/refer-and-earn/pages/refer_and_earn_page.dart'
    as _i15;
import '../../features/job-seeker-module/presentation/video/pages/sample_video_page.dart'
    as _i19;
import '../../features/job-seeker-module/presentation/video/pages/video_capture_page.dart'
    as _i20;
import '../../features/job-seeker-module/presentation/video/pages/video_preview_page.dart'
    as _i22;
import '../../features/job-seeker-module/presentation/video/pages/video_trimmer_page.dart'
    as _i21;
import '../../features/login/presentation/pages/login_page.dart' as _i5;
import '../../features/onboarding/presentation/pages/intro_page.dart' as _i4;
import '../../features/onboarding/presentation/pages/onboarding_page.dart'
    as _i3;
import '../../features/registration/presentation/pages/otp_verification_page.dart'
    as _i7;
import '../../features/registration/presentation/pages/registration_page.dart'
    as _i6;

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
    RegistrationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.RegistrationPage();
        }),
    OtpFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtpFormRouteArgs>(
              orElse: () => const OtpFormRouteArgs());
          return _i7.OtpFormPage(key: args.key);
        }),
    JobseekerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.JobseekerPage();
        }),
    EmployerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.EmployerPage();
        }),
    JobseekerRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    VideoRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    AccountSettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.AccountSettingsPage();
        }),
    EditProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.EditProfilePage();
        }),
    DashboardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.DashboardPage();
        }),
    JobPreferencesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.JobPreferencesPage();
        }),
    NotificationsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i14.NotificationsPage();
        }),
    ReferAndEarnRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.ReferAndEarnPage();
        }),
    ScanYourIdRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i16.ScanYourIdPage();
        }),
    SkillsChoiceRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i17.SkillsChoicePage();
        }),
    UnderProcessingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i18.UnderProcessingPage();
        }),
    SampleVideoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i19.SampleVideoPage();
        }),
    VideoCaptureRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i20.VideoCapturePage();
        }),
    VideoTrimmerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i21.VideoTrimmerPage();
        }),
    VideoPreviewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i22.VideoPreviewPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(OnboardingRoute.name, path: '/'),
        _i1.RouteConfig(IntroRoute.name, path: '/intro'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(RegistrationRoute.name, path: '/registration'),
        _i1.RouteConfig(OtpFormRoute.name, path: '/otp-verification'),
        _i1.RouteConfig(JobseekerRoute.name, path: '/js'),
        _i1.RouteConfig(EmployerRoute.name, path: '/employer'),
        _i1.RouteConfig(JobseekerRouter.name, path: '/job-seeker', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'home', fullMatch: true),
          _i1.RouteConfig(VideoRouter.name, path: 'video', children: [
            _i1.RouteConfig('#redirect',
                path: '', redirectTo: 'sample', fullMatch: true),
            _i1.RouteConfig(SampleVideoRoute.name, path: 'sample'),
            _i1.RouteConfig(VideoCaptureRoute.name, path: 'capture'),
            _i1.RouteConfig(VideoTrimmerRoute.name, path: 'trim'),
            _i1.RouteConfig(VideoPreviewRoute.name, path: 'preview'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(AccountSettingsRoute.name, path: 'account-settings'),
          _i1.RouteConfig(EditProfileRoute.name, path: 'edit-profile'),
          _i1.RouteConfig(DashboardRoute.name, path: 'home'),
          _i1.RouteConfig(JobPreferencesRoute.name, path: 'job-preferences'),
          _i1.RouteConfig(NotificationsRoute.name, path: 'notifications'),
          _i1.RouteConfig(ReferAndEarnRoute.name, path: 'refer-and-earn'),
          _i1.RouteConfig(ScanYourIdRoute.name, path: 'scan-your-id'),
          _i1.RouteConfig(SkillsChoiceRoute.name, path: 'skills-choice'),
          _i1.RouteConfig(UnderProcessingRoute.name, path: 'under-processing'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ])
      ];
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/');

  static const String name = 'OnboardingRoute';
}

class IntroRoute extends _i1.PageRouteInfo {
  const IntroRoute() : super(name, path: '/intro');

  static const String name = 'IntroRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

class RegistrationRoute extends _i1.PageRouteInfo {
  const RegistrationRoute() : super(name, path: '/registration');

  static const String name = 'RegistrationRoute';
}

class OtpFormRoute extends _i1.PageRouteInfo<OtpFormRouteArgs> {
  OtpFormRoute({_i2.Key? key})
      : super(name,
            path: '/otp-verification', args: OtpFormRouteArgs(key: key));

  static const String name = 'OtpFormRoute';
}

class OtpFormRouteArgs {
  const OtpFormRouteArgs({this.key});

  final _i2.Key? key;
}

class JobseekerRoute extends _i1.PageRouteInfo {
  const JobseekerRoute() : super(name, path: '/js');

  static const String name = 'JobseekerRoute';
}

class EmployerRoute extends _i1.PageRouteInfo {
  const EmployerRoute() : super(name, path: '/employer');

  static const String name = 'EmployerRoute';
}

class JobseekerRouter extends _i1.PageRouteInfo {
  const JobseekerRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/job-seeker', initialChildren: children);

  static const String name = 'JobseekerRouter';
}

class VideoRouter extends _i1.PageRouteInfo {
  const VideoRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'video', initialChildren: children);

  static const String name = 'VideoRouter';
}

class AccountSettingsRoute extends _i1.PageRouteInfo {
  const AccountSettingsRoute() : super(name, path: 'account-settings');

  static const String name = 'AccountSettingsRoute';
}

class EditProfileRoute extends _i1.PageRouteInfo {
  const EditProfileRoute() : super(name, path: 'edit-profile');

  static const String name = 'EditProfileRoute';
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute() : super(name, path: 'home');

  static const String name = 'DashboardRoute';
}

class JobPreferencesRoute extends _i1.PageRouteInfo {
  const JobPreferencesRoute() : super(name, path: 'job-preferences');

  static const String name = 'JobPreferencesRoute';
}

class NotificationsRoute extends _i1.PageRouteInfo {
  const NotificationsRoute() : super(name, path: 'notifications');

  static const String name = 'NotificationsRoute';
}

class ReferAndEarnRoute extends _i1.PageRouteInfo {
  const ReferAndEarnRoute() : super(name, path: 'refer-and-earn');

  static const String name = 'ReferAndEarnRoute';
}

class ScanYourIdRoute extends _i1.PageRouteInfo {
  const ScanYourIdRoute() : super(name, path: 'scan-your-id');

  static const String name = 'ScanYourIdRoute';
}

class SkillsChoiceRoute extends _i1.PageRouteInfo {
  const SkillsChoiceRoute() : super(name, path: 'skills-choice');

  static const String name = 'SkillsChoiceRoute';
}

class UnderProcessingRoute extends _i1.PageRouteInfo {
  const UnderProcessingRoute() : super(name, path: 'under-processing');

  static const String name = 'UnderProcessingRoute';
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
