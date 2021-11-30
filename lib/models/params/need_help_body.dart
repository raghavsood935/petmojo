import 'package:json_annotation/json_annotation.dart';

part 'need_help_body.g.dart';

@JsonSerializable(explicitToJson: true)
class NeedHelpBody {
  final String phoneNumber;
  final String description;
  final String screenshot;

  NeedHelpBody(this.phoneNumber, this.description, this.screenshot);

  factory NeedHelpBody.fromJson(Map<String, dynamic> json) =>
      _$NeedHelpBodyFromJson(json);

  Map<String, dynamic> toJson() => _$NeedHelpBodyToJson(this);
}
