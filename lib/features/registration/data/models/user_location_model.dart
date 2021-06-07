
import 'package:find_skill/features/registration/domain/entities/user_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_location_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserLocationModel extends UserLocation {
  const UserLocationModel({
    required final String latitude,
    required final String longitude,
    required final String country,
    required final String state,
    required final String district,
    required final String placeName,
  }) : super(
          latitude: latitude,
          longitude: longitude,
          country: country,
          state: state,
          district: district,
          placeName: placeName,
        );
  
  factory UserLocationModel.fromJson(json) => _$UserLocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserLocationModelToJson(this);
}


