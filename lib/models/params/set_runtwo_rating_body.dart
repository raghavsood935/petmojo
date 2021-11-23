import 'package:json_annotation/json_annotation.dart';

part 'set_runtwo_rating_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SetRunTwoRatingBody {
  final String bookingDetailsId;
  final int date;
  final int rating;
  final bool runReport2;

  SetRunTwoRatingBody(
      this.bookingDetailsId, this.date, this.rating, this.runReport2);

  factory SetRunTwoRatingBody.fromJson(Map<String, dynamic> json) =>
      _$SetRunTwoRatingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetRunTwoRatingBodyToJson(this);
}
