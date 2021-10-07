import 'package:json_annotation/json_annotation.dart';

part 'profile_create_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileCreateBody {
  final String fullName;
  final String username;
  final String bio;
  final String website;
  final String avatarUrl;

  ProfileCreateBody(
      this.fullName, this.username, this.bio, this.website, this.avatarUrl);

  factory ProfileCreateBody.fromJson(Map<String, dynamic> json) =>
      _$ProfileCreateBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCreateBodyToJson(this);
}
