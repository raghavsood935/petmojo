import 'package:json_annotation/json_annotation.dart';

part 'submit_ticket_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SubmitTicketBody {
  final String title;
  final String category;
  final String description;
  final String phoneNumber;


  SubmitTicketBody(this.title, this.category, this.description,this.phoneNumber);

  factory SubmitTicketBody.fromJson(Map<String, dynamic> json) =>
      _$SubmitTicketBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitTicketBodyToJson(this);
}
