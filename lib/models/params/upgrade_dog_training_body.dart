import 'package:json_annotation/json_annotation.dart';

part 'upgrade_dog_training_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UpgradeDogTrainingBody {
  final String bookingId;
  final PackageTrainingBody package;

  UpgradeDogTrainingBody(
    this.bookingId,
    this.package,
  );

  factory UpgradeDogTrainingBody.fromJson(Map<String, dynamic> json) =>
      _$UpgradeDogTrainingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpgradeDogTrainingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PackageTrainingBody {
  final String description;
  final String amount;
  final int frequency;

  PackageTrainingBody(
    this.description,
    this.amount,
    this.frequency,
  );

  factory PackageTrainingBody.fromJson(Map<String, dynamic> json) =>
      _$PackageTrainingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PackageTrainingBodyToJson(this);
}
