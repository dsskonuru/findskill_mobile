import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:riverpod/riverpod.dart';

class NetworkInfo {
  final Connectivity connectivity;

  const NetworkInfo({required this.connectivity});

  Future<bool> get isConnected async {
    final connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      return true;
    } else {
      return false;
    }
  }
}

final networkInfoProvider = Provider<NetworkInfo>(
  (ref) {
    final _connectivity = Connectivity();
    final _networkInfo = NetworkInfo(connectivity: _connectivity);
    return _networkInfo;
  },
);
