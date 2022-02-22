import 'package:freezed_annotation/freezed_annotation.dart';
import 'my_appointments_response.dart';

part 'get_training_appointment_details_response.freezed.dart';
part 'get_training_appointment_details_response.g.dart';

@freezed
class GetTrainingAppointmentDetailsResponse
    with _$GetTrainingAppointmentDetailsResponse {
  GetTrainingAppointmentDetailsResponse._();

  factory GetTrainingAppointmentDetailsResponse({
    @JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
    @JsonKey(name: "bookingStatus") int? bookingStatus,
    @JsonKey(name: "serviceStatus") int? serviceStatus,
    @JsonKey(name: "israted") bool? hasTestimony,
    @JsonKey(name: "serviceType") int? serviceType,
    @JsonKey(name: "_id") String? appointmentId,
    @JsonKey(name: "User") String? userId,
    @JsonKey(name: "ServiceProvider") UserDetailsResponse? partner,
    @JsonKey(name: "DogTrainingbookingDetails")
        GetTrainingBookingDetailsResponse? bookingDetails,
  }) = _GetAppointmentDetailsResponse;

  factory GetTrainingAppointmentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetTrainingAppointmentDetailsResponseFromJson(json);
}

@freezed
class GetTrainingBookingDetailsResponse
    with _$GetTrainingBookingDetailsResponse {
  GetTrainingBookingDetailsResponse._();

  factory GetTrainingBookingDetailsResponse({
    @JsonKey(name: "petRunningLocation") LocationResponse? petRunningLocation,
    @JsonKey(name: "package") TrainingPackageResponse? package,
    @JsonKey(name: "numberOfPets") int? numberOfPets,
    @JsonKey(name: "startDate") String? startDate,
  }) = _GetBookingDetailsResponse;

  factory GetTrainingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetTrainingBookingDetailsResponseFromJson(json);
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
class TrainingPackageResponse with _$TrainingPackageResponse {
  TrainingPackageResponse._();

  factory TrainingPackageResponse({
    @JsonKey(name: "description") String? subscriptionType,
    @JsonKey(name: "amount") double? amount,
    @JsonKey(name: "frequency") int? numberOfSessions,
  }) = _PackageResponse;

  factory TrainingPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$TrainingPackageResponseFromJson(json);
}
