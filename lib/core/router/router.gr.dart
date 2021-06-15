// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:io' as _i15;

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/home/presentation/pages/notice_page.dart' as _i8;
import '../../features/home/presentation/pages/under_processing_page.dart'
    as _i7;
import '../../features/login/presentation/pages/login_page.dart' as _i5;
import '../../features/onboarding/presentation/pages/intro_page.dart' as _i10;
import '../../features/onboarding/presentation/pages/language_page.dart' as _i9;
import '../../features/onboarding/presentation/pages/sample_video_page.dart'
    as _i11;
import '../../features/registration/presentation/pages/jobs_category_page.dart'
    as _i4;
import '../../features/registration/presentation/pages/otp_verification_page.dart'
    as _i6;
import '../../features/registration/presentation/pages/registration_page.dart'
    as _i3;
import '../../features/video_capture/presentation/pages/video_capture_page.dart'
    as _i12;
import '../../features/video_capture/presentation/pages/video_preview_page.dart'
    as _i14;
import '../../features/video_capture/presentation/pages/video_trimmer_page.dart'
    as _i13;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    OnBoardingRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    VideoRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    RegistrationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RegistrationRouteArgs>(
              orElse: () => const RegistrationRouteArgs());
          return _i3.RegistrationPage(key: args.key);
        }),
    JobsCategoryRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.JobsCategoryPage();
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
          return _i5.LoginPage(key: args.key);
        }),
    OtpVerificationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtpVerificationRouteArgs>(
              orElse: () => const OtpVerificationRouteArgs());
          return _i6.OtpVerificationPage(key: args.key);
        }),
    UnderProcessingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.UnderProcessingPage();
        }),
    NoticeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.NoticePage();
        }),
    LanguageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.LanguagePage();
        }),
    IntroRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.IntroPage();
        }),
    SampleVideoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.SampleVideoPage();
        }),
    VideoCaptureRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.VideoCapturePage();
        }),
    VideoTrimmerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VideoTrimmerRouteArgs>();
          return _i13.VideoTrimmerPage(args.file);
        }),
    VideoPreviewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VideoPreviewRouteArgs>();
          return _i14.VideoPreviewPage(args.outputVideoPath);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(OnBoardingRouter.name, path: '/', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'language', fullMatch: true),
          _i1.RouteConfig(LanguageRoute.name, path: 'language'),
          _i1.RouteConfig(IntroRoute.name, path: 'Onboarding'),
          _i1.RouteConfig(SampleVideoRoute.name, path: 'sample'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig(VideoRouter.name, path: '/video', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'capture', fullMatch: true),
          _i1.RouteConfig(VideoCaptureRoute.name, path: 'capture'),
          _i1.RouteConfig(VideoTrimmerRoute.name, path: 'trim'),
          _i1.RouteConfig(VideoPreviewRoute.name, path: 'preview'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig(RegistrationRoute.name, path: '/registration'),
        _i1.RouteConfig(JobsCategoryRoute.name, path: '/skills'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(OtpVerificationRoute.name, path: '/otpVerification'),
        _i1.RouteConfig(UnderProcessingRoute.name, path: '/under-processing'),
        _i1.RouteConfig(NoticeRoute.name, path: '/notice')
      ];
}

class OnBoardingRouter extends _i1.PageRouteInfo {
  const OnBoardingRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'OnBoardingRouter';
}

class VideoRouter extends _i1.PageRouteInfo {
  const VideoRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/video', initialChildren: children);

  static const String name = 'VideoRouter';
}

class RegistrationRoute extends _i1.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({_i2.Key? key})
      : super(name,
            path: '/registration', args: RegistrationRouteArgs(key: key));

  static const String name = 'RegistrationRoute';
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i2.Key? key;
}

class JobsCategoryRoute extends _i1.PageRouteInfo {
  const JobsCategoryRoute() : super(name, path: '/skills');

  static const String name = 'JobsCategoryRoute';
}

class LoginRoute extends _i1.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i2.Key? key})
      : super(name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i2.Key? key;
}

class OtpVerificationRoute extends _i1.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({_i2.Key? key})
      : super(name,
            path: '/otpVerification', args: OtpVerificationRouteArgs(key: key));

  static const String name = 'OtpVerificationRoute';
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({this.key});

  final _i2.Key? key;
}

class UnderProcessingRoute extends _i1.PageRouteInfo {
  const UnderProcessingRoute() : super(name, path: '/under-processing');

  static const String name = 'UnderProcessingRoute';
}

class NoticeRoute extends _i1.PageRouteInfo {
  const NoticeRoute() : super(name, path: '/notice');

  static const String name = 'NoticeRoute';
}

class LanguageRoute extends _i1.PageRouteInfo {
  const LanguageRoute() : super(name, path: 'language');

  static const String name = 'LanguageRoute';
}

class IntroRoute extends _i1.PageRouteInfo {
  const IntroRoute() : super(name, path: 'Onboarding');

  static const String name = 'IntroRoute';
}

class SampleVideoRoute extends _i1.PageRouteInfo {
  const SampleVideoRoute() : super(name, path: 'sample');

  static const String name = 'SampleVideoRoute';
}

class VideoCaptureRoute extends _i1.PageRouteInfo {
  const VideoCaptureRoute() : super(name, path: 'capture');

  static const String name = 'VideoCaptureRoute';
}

class VideoTrimmerRoute extends _i1.PageRouteInfo<VideoTrimmerRouteArgs> {
  VideoTrimmerRoute({required _i15.File file})
      : super(name, path: 'trim', args: VideoTrimmerRouteArgs(file: file));

  static const String name = 'VideoTrimmerRoute';
}

class VideoTrimmerRouteArgs {
  const VideoTrimmerRouteArgs({required this.file});

  final _i15.File file;
}

class VideoPreviewRoute extends _i1.PageRouteInfo<VideoPreviewRouteArgs> {
  VideoPreviewRoute({required String? outputVideoPath})
      : super(name,
            path: 'preview',
            args: VideoPreviewRouteArgs(outputVideoPath: outputVideoPath));

  static const String name = 'VideoPreviewRoute';
}

class VideoPreviewRouteArgs {
  const VideoPreviewRouteArgs({required this.outputVideoPath});

  final String? outputVideoPath;
}
