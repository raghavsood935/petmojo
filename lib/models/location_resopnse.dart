import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'location_resopnse.freezed.dart';
part 'location_resopnse.g.dart';

@freezed
class LatLongResponse with _$LatLongResponse {
  LatLongResponse._();

  factory LatLongResponse({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "coordinates") List<double>? coordinates,
  }) = _LatLongResponse;

  factory LatLongResponse.fromJson(Map<String, dynamic> json) =>
      _$LatLongResponseFromJson(json);
}
