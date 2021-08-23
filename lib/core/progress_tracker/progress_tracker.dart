// ignore_for_file: avoid_positional_boolean_parameters

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import '../providers/firebase_provider.dart';
import '../providers/shared_preferences_provider.dart';
import '../router/router.gr.dart';

const String cachedProgress = 'CACHED_PROGRESS';
const String cachedRole = 'CACHED_ROLE';

enum ProgressKey {
  onboarding, // 0
  introduction, // 1
  login, // 2
  sampleVideo, // 3
  videoCapture, // 4
  videoPreview, // 5
  videoTrimmer, // 6
  registration, // 7
  otpVerification, // 8
  skills, // 9
  jobPreferences, // 10
  scanYourId, // 11
  jobseekerHome, // 12
  employerHome, // 13
  underProcessing, // 14
}

Future<void> saveProgress(ProgressKey pageKey, [bool? isEmployer]) async {
  try {
    final SharedPreferences prefs =
        container.read(cacheProvider).sharedPreferences!;
    final bool status = await prefs.setInt(cachedProgress, pageKey.index);
    if (isEmployer != null) {
      await prefs.setBool(cachedRole, isEmployer);
    }
    if (!status) throw Exception("Unable to store progress");
  } catch (exception, stack) {
    Logger.root.severe("Unable to store progress", exception, stack);
    container.read(crashlyticsProvider).recordError(exception, stack);
  }
}

List<PageRouteInfo> getRoute(int? pageKey, [bool? isEmployer]) {
  late List<PageRouteInfo> route;
  switch (pageKey ?? 0) {
    case 0:
      route = const [OnboardingRoute()];
      break;
    case 1:
      route = const [OnboardingRoute(), IntroRoute()];
      break;
    case 2:
      route = const [OnboardingRoute(), LoginRoute()];
      break;
    case 3:
      route = const [OnboardingRoute(), SampleVideoRoute()];
      break;
    case 4:
      route = const [OnboardingRoute(), VideoCaptureRoute()];
      break;
    case 5:
      // TODO: Setup the video Provider
      route = const [
        OnboardingRoute(),
        VideoCaptureRoute(),
        VideoPreviewRoute()
      ];
      break;
    case 6:
      // TODO: Setup the video Provider
      route = const [
        OnboardingRoute(),
        VideoPreviewRoute(),
        VideoTrimmerRoute()
      ];
      break;
    case 7:
      // TODO: Setup the video(if required) and registration Provider
      if (isEmployer != null && !isEmployer) {
        route = const [
          OnboardingRoute(),
          VideoPreviewRoute(),
          RegistrationRoute()
        ];
      } else {
        route = const [OnboardingRoute(), RegistrationRoute()];
      }
      break;
    case 8:
      // TODO: Setup the video(if required) and registration Provider
      route = const [
        OnboardingRoute(),
        RegistrationRoute(),
        OtpVerificationRoute()
      ];
      break;
    case 9:
      // TODO: Setup the video(if required) and registration Provider
      route = const [
        OnboardingRoute(),
        RegistrationRoute(),
        OtpVerificationRoute(),
        SkillsChoiceRoute()
      ];
      break;
    case 10:
      // TODO: Setup the video(if required) registration and skills Provider
      route = const [
        OnboardingRoute(),
        IntroRoute(),
        RegistrationRoute(),
        OtpVerificationRoute(),
        SkillsChoiceRoute(),
        JobPreferencesRoute()
      ];
      break;
    case 11:
      // TODO: Setup the video(if required) registration skills and job prefs Provider
      route = const [
        OnboardingRoute(),
        RegistrationRoute(),
        OtpVerificationRoute(),
        SkillsChoiceRoute(),
        JobPreferencesRoute(),
        ScanYourIdRoute()
      ];
      break;
    case 12:
      // TODO: Setup the video(if required) edit profile  and user actions Provider
      route = const [JobseekerRoute()];
      break;
    case 13:
      // TODO: Setup the video(if required) edit profile  and user actionsProvider
      route = const [EmployerRoute()];
      break;
    case 14:
      route = const [UnderProcessingRoute()];
      break;
    default:
      route = const [OnboardingRoute()];
      break;
  }
  return route;
}

List<PageRouteInfo>? trackProgress(BuildContext context) {
  try {
    final SharedPreferences prefs =
        container.read(cacheProvider).sharedPreferences!;
    final int? pageKey = prefs.getInt(cachedProgress);
    if (pageKey != null) {
      Logger.root.fine(ProgressKey.values[pageKey]);
    }
    return getRoute(pageKey);
  } catch (exception, stack) {
    Logger.root.severe("Unable to fetch progress", exception, stack);
    container.read(crashlyticsProvider).recordError(exception, stack);
  }
}
