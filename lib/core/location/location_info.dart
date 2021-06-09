import 'package:location/location.dart';

class LocationInfo {
  Location location;
  LocationInfo({
    required this.location,
  });

  Future<PermissionStatus> get hasPermission => location.hasPermission();

  Future<bool> get requestService => location.requestService();

  Future<bool> get serviceEnabled => location.serviceEnabled();

  Future<PermissionStatus> get requestPermission =>
      location.requestPermission();

  Future<LocationData> get getLocation => location.getLocation();
}
