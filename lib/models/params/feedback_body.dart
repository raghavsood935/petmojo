import 'package:json_annotation/json_annotation.dart';

part 'feedback_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SubmitFeedbackBody {
  final int rating;
  final List<String> tags;
  final String screenshot;
  final String description;

  SubmitFeedbackBody(this.rating, this.tags, this.screenshot, this.description);

  factory SubmitFeedbackBody.fromJson(Map<String, dynamic> json) =>
      _$SubmitFeedbackBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitFeedbackBodyToJson(this);
}
