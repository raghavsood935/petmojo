import 'package:json_annotation/json_annotation.dart';

part 'set_testimony_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SetTestimonyBody {
  final String bookingDetailsId;
  final String review;
  final int rating;

  SetTestimonyBody(this.bookingDetailsId, this.review, this.rating);

  factory SetTestimonyBody.fromJson(Map<String, dynamic> json) =>
      _$SetTestimonyBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetTestimonyBodyToJson(this);
}
