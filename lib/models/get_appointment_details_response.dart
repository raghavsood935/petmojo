import 'package:freezed_annotation/freezed_annotation.dart';

import 'my_appointments_response.dart';

part 'get_appointment_details_response.freezed.dart';
part 'get_appointment_details_response.g.dart';

@freezed
class GetAppointmentDetailsResponse with _$GetAppointmentDetailsResponse {
  GetAppointmentDetailsResponse._();

  factory GetAppointmentDetailsResponse({
    @JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
    @JsonKey(name: "bookingStatus") int? bookingStatus,
    @JsonKey(name: "serviceStatus") int? serviceStatus,
    @JsonKey(name: "israted") bool? hasTestimony,
    @JsonKey(name: "serviceType") int? serviceType,
    @JsonKey(name: "_id") String? appointmentId,
    @JsonKey(name: "ServiceProvider") String? serviceProviderId,
    @JsonKey(name: "User") String? userId,
    @JsonKey(name: "bookingDetails") GetBookingDetailsResponse? bookingDetails,
  }) = _GetAppointmentDetailsResponse;

  factory GetAppointmentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAppointmentDetailsResponseFromJson(json);
}

@freezed
class GetBookingDetailsResponse with _$GetBookingDetailsResponse {
  GetBookingDetailsResponse._();

  factory GetBookingDetailsResponse({
    @JsonKey(name: "petBehaviour") PetBehaviourResponse? petBehaviour,
    @JsonKey(name: "petRunningLocation") LocationResponse? petRunningLocation,
    @JsonKey(name: "package") PackageResponse? package,
    @JsonKey(name: "numberOfPets") int? numberOfPets,
    @JsonKey(name: "petDetails") List<PetSizeResponse>? petDetails,
    @JsonKey(name: "specialInstructions") String? specialInstructions,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "run1") String? run1Time,
    @JsonKey(name: "run2") String? run2Time,
    @JsonKey(name: "startDate") String? startDate,
    @JsonKey(name: "dayOff") List<DayOffResponse>? daysOff,
  }) = _GetBookingDetailsResponse;

  factory GetBookingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBookingDetailsResponseFromJson(json);
}

@freezed
class LocationResponse with _$LocationResponse {
  LocationResponse._();

  factory LocationResponse({
    @JsonKey(name: "addressLine1") String? addressLine1,
    @JsonKey(name: "addressLine2") String? addressLine2,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "pinCode") String? pinCode,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}

@freezed
class DayOffResponse with _$DayOffResponse {
  DayOffResponse._();

  factory DayOffResponse({
    @JsonKey(name: "off") String? off,
  }) = _DayOffResponse;

  factory DayOffResponse.fromJson(Map<String, dynamic> json) =>
      _$DayOffResponseFromJson(json);
}

@freezed
class PetSizeResponse with _$PetSizeResponse {
  PetSizeResponse._();

  factory PetSizeResponse({
    @JsonKey(name: "size") String? size,
  }) = _PetSizeResponse;

  factory PetSizeResponse.fromJson(Map<String, dynamic> json) =>
      _$PetSizeResponseFromJson(json);
}

@freezed
class PetBehaviourResponse with _$PetBehaviourResponse {
  PetBehaviourResponse._();

  factory PetBehaviourResponse({
    @JsonKey(name: "pullsOnTheLeash") bool? petBehaviourOne,
    @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
        bool? petBehaviourTwo,
    @JsonKey(name: "jumpsUpOnPeopleAndThings") bool? petBehaviourThree,
    @JsonKey(name: "chaseSmallerAnimals") bool? petBehaviourFour,
    @JsonKey(name: "protectiveOfHome") bool? petBehaviourFive,
  }) = _PetBehaviourResponse;

  factory PetBehaviourResponse.fromJson(Map<String, dynamic> json) =>
      _$PetBehaviourResponseFromJson(json);
}
