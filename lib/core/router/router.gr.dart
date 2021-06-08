// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:io' as _i11;

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/onboarding/presentation/pages/intro_page.dart' as _i6;
import '../../features/onboarding/presentation/pages/language_page.dart' as _i5;
import '../../features/onboarding/presentation/pages/sample_video_page.dart'
    as _i7;
import '../../features/registration/presentation/pages/jobs_category_page.dart'
    as _i4;
import '../../features/registration/presentation/pages/registration_page.dart'
    as _i3;
import '../../features/video_capture/presentation/pages/video_capture_page.dart'
    as _i8;
import '../../features/video_capture/presentation/pages/video_preview_page.dart'
    as _i10;
import '../../features/video_capture/presentation/pages/video_trimmer_page.dart'
    as _i9;

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
    LanguageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LanguagePage();
        }),
    IntroRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.IntroPage();
        }),
    SampleVideoRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.SampleVideoPage();
        }),
    VideoCaptureRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.VideoCapturePage();
        }),
    VideoTrimmerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VideoTrimmerRouteArgs>();
          return _i9.VideoTrimmerPage(args.file);
        }),
    VideoPreviewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<VideoPreviewRouteArgs>();
          return _i10.VideoPreviewPage(args.outputVideoPath);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(OnBoardingRouter.name, path: '/', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'language', fullMatch: true),
          _i1.RouteConfig(LanguageRoute.name, path: 'language'),
          _i1.RouteConfig(IntroRoute.name, path: 'intro'),
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
        _i1.RouteConfig(JobsCategoryRoute.name, path: '/skills')
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

class LanguageRoute extends _i1.PageRouteInfo {
  const LanguageRoute() : super(name, path: 'language');

  static const String name = 'LanguageRoute';
}

class IntroRoute extends _i1.PageRouteInfo {
  const IntroRoute() : super(name, path: 'intro');

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
  VideoTrimmerRoute({required _i11.File file})
      : super(name, path: 'trim', args: VideoTrimmerRouteArgs(file: file));

  static const String name = 'VideoTrimmerRoute';
}

class VideoTrimmerRouteArgs {
  const VideoTrimmerRouteArgs({required this.file});

  final _i11.File file;
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
