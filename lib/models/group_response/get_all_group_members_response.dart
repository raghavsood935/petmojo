import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/my_animal_model.dart';

import '../profile_model_response.dart';

part 'get_all_group_members_response.freezed.dart';
part 'get_all_group_members_response.g.dart';

@freezed
class GetAllGroupMembersResponse with _$GetAllGroupMembersResponse {
  GetAllGroupMembersResponse._();

  factory GetAllGroupMembersResponse({
    @JsonKey(name: "members") List<GroupMemberResponse>? listOfMembers,
  }) = _GetAllGroupMembersResponse;

  factory GetAllGroupMembersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllGroupMembersResponseFromJson(json);
}

@freezed
class GroupMemberResponse with _$GroupMemberResponse {
  GroupMemberResponse._();

  factory GroupMemberResponse({
    @JsonKey(name: "isAdmin") bool? isAdmin,
    @JsonKey(name: "userType") String? userType,
    @JsonKey(name: "user") ProfileResponse? user,
  }) = _GroupMemberResponse;

  factory GroupMemberResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberResponseFromJson(json);
}
