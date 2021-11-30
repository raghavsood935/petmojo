import 'package:json_annotation/json_annotation.dart';
part 'show_people_to_follow_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ShowPeopleToFollowBody {
  final int counter;

  ShowPeopleToFollowBody(this.counter);

  factory ShowPeopleToFollowBody.fromJson(Map<String, dynamic> json) =>
      _$ShowPeopleToFollowBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ShowPeopleToFollowBodyToJson(this);
}
