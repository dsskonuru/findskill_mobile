import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<ConnectivityResult> getConnectivity() {
  return Connectivity().checkConnectivity();
}

final connectivityProvider = Provider.autoDispose((ref) {
  bool isConnected = false;
  final connectivity = Connectivity().onConnectivityChanged;
  
  final streamController = connectivity.listen((event) {
    if (event != ConnectivityResult.none) {
      isConnected = true;
    } else {
      isConnected = false;
    }
  });

  ref.onDispose(
    () {
      streamController.cancel();
    },
  );

  return isConnected;
});
