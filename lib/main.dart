import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/router/router.gr.dart';
import 'core/services/services.dart';
import 'core/theme/theme_data.dart';

List<CameraDescription> cameras = [];
final container = ProviderContainer();

Future<void> main() async {
  final dio = Dio(); // Provide a dio instance
  dio.options.headers["Demo-Header"] =
      "demo header"; // config your dio headers globally
  final client = RestClient(dio);

  _setupLogging();

  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    debugPrint(cameras.toString());
  } on CameraException catch (e) {
    logError(e.code, e.description);
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

void logError(String code, String? message) {
  if (message != null) {
    debugPrint('Error: $code\nError Message: $message');
  } else {
    debugPrint('Error: $code');
  }
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
