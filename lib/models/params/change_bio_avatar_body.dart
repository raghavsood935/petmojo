import 'package:json_annotation/json_annotation.dart';

part 'change_bio_avatar_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeBioAvatarBody {
  final String bio;
  final String avatar;

  ChangeBioAvatarBody(this.bio, this.avatar);

  factory ChangeBioAvatarBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeBioAvatarBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeBioAvatarBodyToJson(this);
}
