import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'animal_profile_create_resopnse.freezed.dart';
part 'animal_profile_create_resopnse.g.dart';

@freezed
class AnimalProfileCreateResopnse with _$AnimalProfileCreateResopnse {
  AnimalProfileCreateResopnse._();

  factory AnimalProfileCreateResopnse({
    @JsonKey(name: "token") String? token,
  }) = _AnimalProfileCreateResopnse;

  factory AnimalProfileCreateResopnse.fromJson(Map<String, dynamic> json) =>
      _$AnimalProfileCreateResopnseFromJson(json);
}
