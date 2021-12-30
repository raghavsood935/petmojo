import 'package:json_annotation/json_annotation.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';

part 'send_follow_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SendFollowRequestBody {
  final FromRequestBody from;
  final ToRequestBody to;

  SendFollowRequestBody(this.from, this.to);

  factory SendFollowRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SendFollowRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SendFollowRequestBodyToJson(this);
}
