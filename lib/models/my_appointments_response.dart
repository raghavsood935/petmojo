import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_appointments_response.freezed.dart';
part 'my_appointments_response.g.dart';

@freezed
class MyAppointmentsResponse with _$MyAppointmentsResponse {
  MyAppointmentsResponse._();

  factory MyAppointmentsResponse({
    @JsonKey(name: "serviceList")
        List<DogRunningAppointmentListResponse>? dogRunningAppointmentsList,
    @JsonKey(name: "Traininglist")
        List<DogTrainingAppointmentListResponse>? dogTrainingAppointmentsList,
  }) = _MyAppointmentsResponse;

  factory MyAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAppointmentsResponseFromJson(json);
}

@freezed
class DogTrainingAppointmentListResponse
    with _$DogTrainingAppointmentListResponse {
  DogTrainingAppointmentListResponse._();

  factory DogTrainingAppointmentListResponse({
    @JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
    @JsonKey(name: "bookingStatus") int? bookingStatus,
    @JsonKey(name: "serviceType") int? serviceType,
    @JsonKey(name: "_id") String? appointmentId,
    @JsonKey(name: "ServiceProvider") UserDetailsResponse? user,
    @JsonKey(name: "DogTrainingbookingDetails")
        DogTrainingBookingDetailsResponse? bookingDetails,
    @JsonKey(name: "sessionsLeft") int? sessionsLeft,
    @JsonKey(name: "isReorderDone") bool? isReorderDone,
  }) = _DogTrainingAppointmentListResponse;

  factory DogTrainingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DogTrainingAppointmentListResponseFromJson(json);
}

@freezed
class DogRunningAppointmentListResponse
    with _$DogRunningAppointmentListResponse {
  DogRunningAppointmentListResponse._();

  factory DogRunningAppointmentListResponse({
    @JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
    @JsonKey(name: "bookingStatus") int? bookingStatus,
    @JsonKey(name: "serviceType") int? serviceType,
    @JsonKey(name: "_id") String? appointmentId,
    @JsonKey(name: "ServiceProvider") UserDetailsResponse? user,
    @JsonKey(name: "bookingDetails")
        DogRunningBookingDetailsResponse? bookingDetails,
    @JsonKey(name: "daysLeft") int? daysLeft,
    @JsonKey(name: "isReorderDone") bool? isReorderDone,
  }) = _DogRunningAppointmentListResponse;

  factory DogRunningAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DogRunningAppointmentListResponseFromJson(json);
}

@freezed
class UserDetailsResponse with _$UserDetailsResponse {
  UserDetailsResponse._();

  factory UserDetailsResponse({
    @JsonKey(name: "_id") String? userId,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "fullName") String? fullName,
    @JsonKey(name: "avatar") String? avatar,
  }) = _UserDetailsResponse;

  factory UserDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsResponseFromJson(json);
}

@freezed
class DogTrainingBookingDetailsResponse
    with _$DogTrainingBookingDetailsResponse {
  DogTrainingBookingDetailsResponse._();

  factory DogTrainingBookingDetailsResponse({
    @JsonKey(name: "package") DogTrainingPackageResponse? package,
    @JsonKey(name: "_id") String? bookingId,
    @JsonKey(name: "startDate") String? startDate,
  }) = _DogTrainingBookingDetailsResponse;

  factory DogTrainingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DogTrainingBookingDetailsResponseFromJson(json);
}

@freezed
class DogRunningBookingDetailsResponse with _$DogRunningBookingDetailsResponse {
  DogRunningBookingDetailsResponse._();

  factory DogRunningBookingDetailsResponse({
    @JsonKey(name: "package") DogRunningPackageResponse? package,
    @JsonKey(name: "_id") String? bookingId,
    @JsonKey(name: "run1") String? run1Time,
    @JsonKey(name: "run2") String? run2Time,
    @JsonKey(name: "startDate") String? startDate,
  }) = _DogRunningBookingDetailsResponse;

  factory DogRunningBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DogRunningBookingDetailsResponseFromJson(json);
}

@freezed
class DogTrainingPackageResponse with _$DogTrainingPackageResponse {
  DogTrainingPackageResponse._();

  factory DogTrainingPackageResponse({
    @JsonKey(name: "description") String? subscriptionType,
    @JsonKey(name: "amount") double? amount,
    @JsonKey(name: "frequency") int? numberOfSessions,
  }) = _DogTrainingPackageResponse;

  factory DogTrainingPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$DogTrainingPackageResponseFromJson(json);
}

@freezed
class DogRunningPackageResponse with _$DogRunningPackageResponse {
  DogRunningPackageResponse._();

  factory DogRunningPackageResponse({
    @JsonKey(name: "description") String? subscriptionType,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "frequency") int? numberOfDays,
    @JsonKey(name: "dayfrequency") int? numberOfTimes,
  }) = _DogRunningPackageResponse;

  factory DogRunningPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$DogRunningPackageResponseFromJson(json);
}

@freezed
class PetDetailsResponse with _$PetDetailsResponse {
  PetDetailsResponse._();

  factory PetDetailsResponse({
    @JsonKey(name: "_id") String? petId,
    @JsonKey(name: "name") String? petName,
    @JsonKey(name: "username") String? petUserName,
  }) = _PetDetailsResponse;

  factory PetDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsResponseFromJson(json);
}
