import 'package:json_annotation/json_annotation.dart';

part 'group_basic_with_counter_body.g.dart';

@JsonSerializable(explicitToJson: true)
class GroupBasicWithCounterBody {
  final String groupId;
  final int counter;

  GroupBasicWithCounterBody(this.groupId, this.counter);

  factory GroupBasicWithCounterBody.fromJson(Map<String, dynamic> json) =>
      _$GroupBasicWithCounterBodyFromJson(json);

  Map<String, dynamic> toJson() => _$GroupBasicWithCounterBodyToJson(this);
}
