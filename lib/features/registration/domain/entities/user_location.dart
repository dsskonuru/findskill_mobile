import 'package:equatable/equatable.dart';

class UserLocation extends Equatable {
  final String latitude;
  final String longitude;
  final String country;
  final String state;
  final String district;
  final String placeName;

  const UserLocation({
    required this.latitude,
    required this.longitude,
    required this.country,
    required this.state,
    required this.district,
    required this.placeName,
  });

  @override
  List<Object?> get props => [
        latitude,
        longitude,
        country,
        state,
        district,
        placeName,
      ];
}
