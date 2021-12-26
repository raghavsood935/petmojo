import 'package:json_annotation/json_annotation.dart';

part 'update_group_hashtags_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateGroupHashtagsBody {
  final String groupId;
  final String hashtags;

  UpdateGroupHashtagsBody(this.groupId, this.hashtags);

  factory UpdateGroupHashtagsBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateGroupHashtagsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateGroupHashtagsBodyToJson(this);
}
