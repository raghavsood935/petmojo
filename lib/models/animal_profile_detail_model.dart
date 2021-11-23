import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'animal_profile_detail_model.freezed.dart';
part 'animal_profile_detail_model.g.dart';

@freezed
class AnimalProfileDetailModelResponse with _$AnimalProfileDetailModelResponse {
  AnimalProfileDetailModelResponse._();

  factory AnimalProfileDetailModelResponse({
    @JsonKey(name: "pet") MyAnimalModelResponse? animalprofileModel,
  }) = _AnimalProfileDetailModelResponse;

  factory AnimalProfileDetailModelResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalProfileDetailModelResponseFromJson(json);
}
