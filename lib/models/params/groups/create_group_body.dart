import 'package:json_annotation/json_annotation.dart';

part 'create_group_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateGroupBody {
  final String avatar;
  final String name;
  final String coverPhoto;

  CreateGroupBody(this.avatar, this.name, this.coverPhoto);

  factory CreateGroupBody.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGroupBodyToJson(this);
}
