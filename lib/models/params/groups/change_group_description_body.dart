import 'package:json_annotation/json_annotation.dart';

part 'change_group_description_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeGroupDescriptionBody {
  final String groupId;
  final String description;

  ChangeGroupDescriptionBody(this.groupId, this.description);

  factory ChangeGroupDescriptionBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeGroupDescriptionBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeGroupDescriptionBodyToJson(this);
}
