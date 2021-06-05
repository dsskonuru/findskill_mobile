import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/router/router.gr.dart';
import 'core/theme_data.dart';

List<CameraDescription> cameras = [];
Future<void> main() async {
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
