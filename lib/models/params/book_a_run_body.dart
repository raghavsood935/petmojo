import 'package:json_annotation/json_annotation.dart';

part 'book_a_run_body.g.dart';

@JsonSerializable(explicitToJson: true)
class BookARunBody {
  final int numberOfPets;
  final List<PetDetailsBody> petDetails;
  final String specialInstructions;
  final PetBehaviourBody petBehaviour;
  final PetRunningLocationBody petRunningLocation;
  final String phone;
  final String alternatePhone;
  final String alternateName;
  final PackageBody package;
  final int startDate;
  final int dayOff;
  final List<RunDetailsBody> runDetails;

  BookARunBody(
    this.numberOfPets,
    this.petDetails,
    this.specialInstructions,
    this.petBehaviour,
    this.petRunningLocation,
    this.phone,
    this.alternatePhone,
    this.alternateName,
    this.package,
    this.startDate,
    this.dayOff,
    this.runDetails,
  );

  factory BookARunBody.fromJson(Map<String, dynamic> json) =>
      _$BookARunBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BookARunBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetDetailsBody {
  final String petId;
  final String size;

  PetDetailsBody(this.petId, this.size);

  factory PetDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetDetailsBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetBehaviourBody {
  final bool pullsOnTheLeash;
  final bool likeInteractingWithOtherDogsOrPeople;
  final bool jumpsUpOnPeopleAndThings;
  final bool chaseSmallerAnimals;
  final bool protectiveOfHome;

  PetBehaviourBody(
    this.pullsOnTheLeash,
    this.likeInteractingWithOtherDogsOrPeople,
    this.jumpsUpOnPeopleAndThings,
    this.chaseSmallerAnimals,
    this.protectiveOfHome,
  );

  factory PetBehaviourBody.fromJson(Map<String, dynamic> json) =>
      _$PetBehaviourBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetBehaviourBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetRunningLocationBody {
  final String addressLine1;
  final String addressLine2;
  final String state;
  final String city;
  final String pinCode;

  PetRunningLocationBody(
    this.addressLine1,
    this.addressLine2,
    this.state,
    this.city,
    this.pinCode,
  );

  factory PetRunningLocationBody.fromJson(Map<String, dynamic> json) =>
      _$PetRunningLocationBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetRunningLocationBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PackageBody {
  final String description;
  final String amount;
  final int frequency;
  final int dayfrequency;

  PackageBody(
    this.description,
    this.amount,
    this.frequency,
    this.dayfrequency,
  );

  factory PackageBody.fromJson(Map<String, dynamic> json) =>
      _$PackageBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PackageBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RunDetailsBody {
  final String runTime;

  RunDetailsBody(
    this.runTime,
  );

  factory RunDetailsBody.fromJson(Map<String, dynamic> json) =>
      _$RunDetailsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RunDetailsBodyToJson(this);
}
