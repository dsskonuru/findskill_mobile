import 'package:location/location.dart';

abstract class LocationInfo {
  Future<bool> get serviceEnabled;
  Future<bool> get requestService;
  Future<PermissionStatus> get hasPermission;
  Future<PermissionStatus> get requestPermission;
  Future<LocationData> get getLocation;
}

class LocationInfoImpl extends LocationInfo {

  final Location location;
  LocationInfoImpl({
    required this.location,
  });

  @override
  Future<PermissionStatus> get hasPermission => location.hasPermission();

  @override
  Future<bool> get requestService => location.requestService();

  @override
  Future<bool> get serviceEnabled => location.serviceEnabled();

  @override
  Future<PermissionStatus> get requestPermission => location.requestPermission();

  @override
  Future<LocationData> get getLocation => location.getLocation();

}
