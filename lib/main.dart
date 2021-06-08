import 'package:camera/camera.dart';
import 'package:find_skill/features/onboarding/data/datasources/language_list_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/router/router.gr.dart';
import 'core/theme/theme_data.dart';

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

class FindSkillApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          theme: theme,
        );
      },
    );
  }
}
