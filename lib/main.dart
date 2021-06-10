import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/localization/localization.dart';
import 'core/router/router.gr.dart';
import 'core/theme/theme_data.dart';
import 'features/onboarding/data/datasources/language_list_local_data_source.dart';

List<CameraDescription> cameras = [];
final container = ProviderContainer();

Future<void> main() async {
  _setupLogging();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    Logger.root.fine(cameras);
    container
        .read(sharedPreferencesProvider)
        .setSharedPreferences(await SharedPreferences.getInstance());
  } on Exception catch (e) {
    Logger.root.severe(e);
  }

  await Firebase.initializeApp();

  runApp(
    ProviderScope(
      child: FindSkillApp(),
    ),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (event) {
      debugPrint('${event.level.name}: ${event.time}: ${event.message}');
    },
  );
}

class FindSkillApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    final _FindSkillAppState? state =
        context.findAncestorStateOfType<_FindSkillAppState>();
    state!.setLocale(newLocale);
  }

  @override
  _FindSkillAppState createState() => _FindSkillAppState();
}

class _FindSkillAppState extends State<FindSkillApp> {
  final _appRouter = AppRouter();
  Locale _locale = const Locale('en');

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          locale: _locale,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('hi', 'IN'),
          ],
          // These delegates make sure that the localization data for the proper language is loaded
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // Returns a locale which will be used by the app
          localeResolutionCallback: (locale, supportedLocales) {
            // Check if the current device locale is supported
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale!.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            // If the locale of the device is not supported, use the first one
            // from the list (English, in this case).
            return supportedLocales.first;
          },
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          theme: theme,
        );
      },
    );
  }
}
