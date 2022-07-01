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
    @JsonKey(name: "User") UserDetailsResponse? user,
    @JsonKey(name: "ServiceProvider") UserDetailsResponse? partner,
    @JsonKey(name: "DogTrainingbookingDetails")
        GetTrainingBookingDetailsResponse? bookingDetails,
    @JsonKey(name: "index") int? index,
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
    @JsonKey(name: "paymentDetails") PaymentDetailsResponse? paymentDetails,
    @JsonKey(name: "package") TrainingPackageResponse? package,
    @JsonKey(name: "numberOfPets") int? numberOfPets,
    @JsonKey(name: "startDate") String? startDate,
    @JsonKey(name: "runDetails") List<trainDetailsResponse>? runDetails,
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
class trainDetailsResponse with _$trainDetailsResponse {
  trainDetailsResponse._();

  factory trainDetailsResponse({
    @JsonKey(name: "sessionNo") int? sessionNo,
    @JsonKey(name: "sessionStatus") int? sessionStatus,
  }) = _trainDetailsResponse;

  factory trainDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$trainDetailsResponseFromJson(json);
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

@freezed
class PaymentDetailsResponse with _$PaymentDetailsResponse {
  PaymentDetailsResponse._();

  factory PaymentDetailsResponse({
    @JsonKey(name: "amount") double? amount,
  }) = _PaymentDetailsResponse;

  factory PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsResponseFromJson(json);
}
