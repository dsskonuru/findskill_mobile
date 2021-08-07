import 'package:location/location.dart';
import 'package:riverpod/riverpod.dart';

// TODO: Setup location service for iOS

class LocationService {
  Location location;

  LocationService({
    required this.location,
  });

  Future<PermissionStatus> get hasPermission => location.hasPermission();

  Future<bool> get requestService => location.requestService();

  Future<bool> get serviceEnabled => location.serviceEnabled();

  Future<PermissionStatus> get requestPermission =>
      location.requestPermission();

  Future<LocationData> get getLocation => location.getLocation();
}

final locationServiceProvider = Provider<LocationService>(
  (ref) {
    final Location location = Location();
    final client = LocationService(location: location);
    return client;
  },
);
