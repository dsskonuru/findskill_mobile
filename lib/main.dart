import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/localization/app_localization.dart';
import 'core/providers/shared_preferences_provider.dart';
import 'core/router/router.gr.dart';
import 'core/theme/theme_data.dart';
import 'features/onboarding/presentation/provider/language_provider.dart';

List<CameraDescription> cameras = [];
final container = ProviderContainer();

Future<void> main() async {
  _setupLogging();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    cameras = await availableCameras();
    Logger.root.fine(cameras);

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    container.read(cacheProvider).sharedPreferences = sharedPreferences;

    await container.read(languageProvider).loadLanguages();
    await container.read(languageProvider).loadLanguageMap();

    runApp(FindSkillApp());
  } catch (exception, stack) {
    Logger.root.severe(exception, stack);
  }
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
    final String _languageCode = container.read(languageProvider).language.code;
    setState(() {
      _locale = Locale(_languageCode);
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    // disposing the globally self managed container.
    container.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UncontrolledProviderScope(
      container: container,
      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            locale: _locale,
            supportedLocales: container
                .read(languageProvider)
                .supportedLanguageCodes
                .map((languageCode) => Locale(languageCode))
                .toList(),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              for (final supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale!.languageCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            theme: theme,
          );
        },
      ),
    );
  }
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (event) {
      debugPrint('${event.level.name}: ${event.time}: ${event.message}');
    },
  );
}

// Future<void> setupUser() async {
//   try {
//     final SharedPreferences prefs =
//         container.read(cacheProvider).sharedPreferences!;
// prefs.clear();
// final uid = prefs.getString("uid");
// if (uid != null) {
//   await container.read(usersProvider).doc(uid).get().then(
//     (DocumentSnapshot<User> userSnapshot) async {
//       if (userSnapshot.exists) {
//         container.read(crashlyticsProvider).log('User is signed in');
//         container.read(userActionsProvider).user = userSnapshot.data();
//       } else {
//         container
//             .read(crashlyticsProvider)
//             .log('User requires registration');
//         container.read(userActionsProvider).user = null;
//       }
//     },
//   );
// }
//   } catch (exception, stack) {
//     debugPrint(exception.toString());
//     container.read(crashlyticsProvider).recordError(exception, stack);
//   }
// }
