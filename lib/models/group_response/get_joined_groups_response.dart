import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'get_joined_groups_response.freezed.dart';
part 'get_joined_groups_response.g.dart';

@freezed
class GetJoinedGroupResponse with _$GetJoinedGroupResponse {
  GetJoinedGroupResponse._();

  factory GetJoinedGroupResponse({
    @JsonKey(name: "message")
        List<GetJoinedGroupInfoResponse>? listOfJoinedGroup,
    @JsonKey(name: "success") bool? success,
  }) = _GetJoinedGroupResponse;

  factory GetJoinedGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GetJoinedGroupResponseFromJson(json);
}

@freezed
class GetJoinedGroupInfoResponse with _$GetJoinedGroupInfoResponse {
  GetJoinedGroupInfoResponse._();

  factory GetJoinedGroupInfoResponse({
    @JsonKey(name: "isAdmin") bool? isAdmin,
    @JsonKey(name: "group") GroupBasicInfoResponse? group,
  }) = _GetJoinedGroupInfoResponse;

  factory GetJoinedGroupInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetJoinedGroupInfoResponseFromJson(json);
}
