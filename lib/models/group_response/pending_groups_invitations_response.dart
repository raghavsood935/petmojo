import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/models/user_profile_details_response.dart';

part 'pending_groups_invitations_response.freezed.dart';
part 'pending_groups_invitations_response.g.dart';

@freezed
class PendingGroupInvitationResponse with _$PendingGroupInvitationResponse {
  PendingGroupInvitationResponse._();

  factory PendingGroupInvitationResponse({
    @JsonKey(name: "message") List<GroupInvitationResponse>? listOfInvitations,
    @JsonKey(name: "success") bool? success,
  }) = _PendingGroupInvitationResponse;

  factory PendingGroupInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$PendingGroupInvitationResponseFromJson(json);
}

@freezed
class GroupInvitationResponse with _$GroupInvitationResponse {
  GroupInvitationResponse._();

  factory GroupInvitationResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "group") GroupBasicInfoResponse? group,
    @JsonKey(name: "personType") String? personType,
    @JsonKey(name: "personInvited") ProfileResponse? personInvited,
    @JsonKey(name: "date") String? date,
  }) = _GroupInvitationResponse;

  factory GroupInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupInvitationResponseFromJson(json);
}
