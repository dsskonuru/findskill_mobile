import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/progress_tracker/progress_tracker.dart';
import '../core/router/router.gr.dart';

class InitWrapperPage extends StatefulWidget {
  final int? pageKey;
  const InitWrapperPage({Key? key, @PathParam('pageKey') this.pageKey})
      : super(key: key);

  @override
  _InitWrapperPageState createState() => _InitWrapperPageState();
}

class _InitWrapperPageState extends State<InitWrapperPage> {
  @override
  Widget build(BuildContext context) => AutoRouter.declarative(
        routes: (context) {
          // return [const OnboardingRoute()];
          if (widget.pageKey == null) {
            return trackProgress(context) ?? [const OnboardingRoute()];
          } else {
            return [getRoute(widget.pageKey).last];
          }
        },
      );
}
