import 'package:json_annotation/json_annotation.dart';

part 'set_runone_rating_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SetRunOneRatingBody {
  final String bookingDetailsId;
  final int date;
  final int rating;
  final bool runReport1;

  SetRunOneRatingBody(
      this.bookingDetailsId, this.date, this.rating, this.runReport1);

  factory SetRunOneRatingBody.fromJson(Map<String, dynamic> json) =>
      _$SetRunOneRatingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetRunOneRatingBodyToJson(this);
}



@JsonSerializable(explicitToJson: true)
class SetTrainingRatingBody {
  final String bookingDetailsId;
  final int rating;
  final int sessionNo;

  SetTrainingRatingBody(
      this.bookingDetailsId,this.rating, this.sessionNo);

  factory SetTrainingRatingBody.fromJson(Map<String, dynamic> json) =>
      _$SetTrainingRatingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetTrainingRatingBodyToJson(this);
}
