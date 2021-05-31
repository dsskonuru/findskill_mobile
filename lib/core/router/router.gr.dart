// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/onboarding/presentation/pages/intro_page.dart' as _i6;
import '../../features/onboarding/presentation/pages/language_page.dart' as _i5;
import '../../features/onboarding/presentation/pages/sample_video_page.dart'
    as _i7;
import '../../features/registration/presentation/pages/registration_page.dart'
    as _i4;
import '../../features/video_capture/presentation/pages/camera_page.dart'
    as _i3;

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
    VideoCaptureRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.VideoCapturePage();
        }),
    RegistrationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.RegistrationPage();
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
        _i1.RouteConfig(VideoCaptureRoute.name, path: '/video-capture'),
        _i1.RouteConfig(RegistrationRoute.name, path: '/registration')
      ];
}

class OnBoardingRouter extends _i1.PageRouteInfo {
  const OnBoardingRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'OnBoardingRouter';
}

class VideoCaptureRoute extends _i1.PageRouteInfo {
  const VideoCaptureRoute() : super(name, path: '/video-capture');

  static const String name = 'VideoCaptureRoute';
}

class RegistrationRoute extends _i1.PageRouteInfo {
  const RegistrationRoute() : super(name, path: '/registration');

  static const String name = 'RegistrationRoute';
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
