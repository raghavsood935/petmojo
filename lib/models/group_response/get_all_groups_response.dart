import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'get_all_groups_response.freezed.dart';
part 'get_all_groups_response.g.dart';

@freezed
class GetAllGroupResponse with _$GetAllGroupResponse {
  GetAllGroupResponse._();

  factory GetAllGroupResponse({
    @JsonKey(name: "message") List<GroupBasicInfoResponse>? listOfGroups,
    @JsonKey(name: "success") bool? success,
  }) = _GetAllGroupResponse;

  factory GetAllGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllGroupResponseFromJson(json);
}
