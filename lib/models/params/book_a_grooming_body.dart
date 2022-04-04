import 'package:json_annotation/json_annotation.dart';

part 'book_a_grooming_body.g.dart';

@JsonSerializable(explicitToJson: true)
class BookAGroomingBody {
  final int numberOfPets;
  final List<PetDetailsGroomingBody> petDetails;
  final PetRunningLocationGroomingBody petRunningLocation;
  final String phone;
  final int startDate;
  final PetGroomingTimeGroomingBody sessionDetails;
  final PackageGroomingBody package;

  BookAGroomingBody(
    this.numberOfPets,
    this.petDetails,
    this.petRunningLocation,
    this.phone,
    this.startDate,
    this.sessionDetails,
    this.package,
  );

  factory BookAGroomingBody.fromJson(Map<String, dynamic> json) =>
      _$BookAGroomingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BookAGroomingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetDetailsGroomingBody {
  final String petId;
  final String size;

  PetDetailsGroomingBody(this.petId, this.size);

  factory PetDetailsGroomingBody.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsGroomingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetDetailsGroomingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetRunningLocationGroomingBody {
  final String addressLine1;
  final String addressLine2;
  final String state;
  final String city;
  final String pinCode;
  final double lat;
  final double long;

  PetRunningLocationGroomingBody(
    this.addressLine1,
    this.addressLine2,
    this.state,
    this.city,
    this.pinCode,
    this.lat,
    this.long,
  );

  factory PetRunningLocationGroomingBody.fromJson(Map<String, dynamic> json) =>
      _$PetRunningLocationGroomingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetRunningLocationGroomingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PetGroomingTimeGroomingBody {
  final String sessionTime;

  PetGroomingTimeGroomingBody(
    this.sessionTime,
  );

  factory PetGroomingTimeGroomingBody.fromJson(Map<String, dynamic> json) =>
      _$PetGroomingTimeGroomingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PetGroomingTimeGroomingBodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PackageGroomingBody {
  final String description;
  final String amount;

  PackageGroomingBody(
    this.description,
    this.amount,
  );

  factory PackageGroomingBody.fromJson(Map<String, dynamic> json) =>
      _$PackageGroomingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PackageGroomingBodyToJson(this);
}
