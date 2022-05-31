import 'package:json_annotation/json_annotation.dart';
part 'set_training_rating_body.g.dart';

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
