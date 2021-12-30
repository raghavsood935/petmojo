import 'package:json_annotation/json_annotation.dart';

part 'search_profile_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchProfilesBody {
  final int counter;
  final String username;
  final String type;

  SearchProfilesBody(this.counter, this.username, this.type);

  factory SearchProfilesBody.fromJson(Map<String, dynamic> json) =>
      _$SearchProfilesBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SearchProfilesBodyToJson(this);
}
