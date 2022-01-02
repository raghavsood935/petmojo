import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'get_group_info_response.freezed.dart';
part 'get_group_info_response.g.dart';

@freezed
class GetGroupInfoResponse with _$GetGroupInfoResponse {
  GetGroupInfoResponse._();

  factory GetGroupInfoResponse({
    @JsonKey(name: "group") GroupBasicInfoResponse? group,
  }) = _GetGroupInfoResponse;

  factory GetGroupInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGroupInfoResponseFromJson(json);
}
