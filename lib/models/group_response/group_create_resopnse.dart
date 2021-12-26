import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'group_create_resopnse.freezed.dart';
part 'group_create_resopnse.g.dart';

@freezed
class GroupCreateResponse with _$GroupCreateResponse {
  GroupCreateResponse._();

  factory GroupCreateResponse({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "groupId") String? groupId,
  }) = _GroupCreateResponse;

  factory GroupCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupCreateResponseFromJson(json);
}
