import 'package:json_annotation/json_annotation.dart';

part 'book_a_training_body.g.dart';

@JsonSerializable(explicitToJson: true)
class BookATrainingBody {
  final int numberOfPets;
  final List<PetDetailsTrainingBody> petDetails;
  final PetRunningLocationTrainingBody petRunningLocation;
  final String phone;
  final int startDate;
  final String time;
  final PackageTrainingBody package;

  BookATrainingBody(
    this.numberOfPets,
    this.petDetails,
    this.petRunningLocation,
    this.phone,
    this.startDate,
    this.time,
    this.package,
  );

  factory BookATrainingBody.fromJson(Map<String, dynamic> json) =>
      _$BookATrainingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BookATrainingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetDetailsTrainingBody {
  final String petId;
  final String size;

  PetDetailsTrainingBody(this.petId, this.size);

  factory PetDetailsTrainingBody.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsTrainingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetDetailsTrainingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetRunningLocationTrainingBody {
  final String addressLine1;
  final String addressLine2;
  final String state;
  final String city;
  final String pinCode;
  final double lat;
  final double long;

  PetRunningLocationTrainingBody(
    this.addressLine1,
    this.addressLine2,
    this.state,
    this.city,
    this.pinCode,
    this.lat,
    this.long,
  );

  factory PetRunningLocationTrainingBody.fromJson(Map<String, dynamic> json) =>
      _$PetRunningLocationTrainingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetRunningLocationTrainingBodyToJson(this);
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
