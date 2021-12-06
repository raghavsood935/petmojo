import 'package:json_annotation/json_annotation.dart';

part 'fetch_list_of_following_body.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchListOfFollowingBody {
  final String userId;
  final int counter;

  FetchListOfFollowingBody(this.userId, this.counter);

  factory FetchListOfFollowingBody.fromJson(Map<String, dynamic> json) =>
      _$FetchListOfFollowingBodyFromJson(json);
  Map<String, dynamic> toJson() => _$FetchListOfFollowingBodyToJson(this);
}
