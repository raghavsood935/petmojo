import 'package:json_annotation/json_annotation.dart';

part 'edit_group_cover_body.g.dart';

@JsonSerializable(explicitToJson: true)
class EditGroupCoverBody {
  final String groupId;
  final String coverPhoto;

  EditGroupCoverBody(this.groupId, this.coverPhoto);

  factory EditGroupCoverBody.fromJson(Map<String, dynamic> json) =>
      _$EditGroupCoverBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EditGroupCoverBodyToJson(this);
}
