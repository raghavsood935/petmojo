import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'group_basic_info_response.freezed.dart';
part 'group_basic_info_response.g.dart';

@freezed
class GroupBasicInfoResponse with _$GroupBasicInfoResponse {
  GroupBasicInfoResponse._();

  factory GroupBasicInfoResponse({
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "members") int? members,
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "hashtags") List<String>? hashtags,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "coverPhoto") String? coverPhoto,
    @JsonKey(name: "isMember") bool? isMember,
    @JsonKey(name: "isAdmin") bool? isAdmin,
  }) = _GroupBasicInfoResponse;

  factory GroupBasicInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupBasicInfoResponseFromJson(json);
}
