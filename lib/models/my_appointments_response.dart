import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_appointments_response.freezed.dart';
part 'my_appointments_response.g.dart';

@freezed
class MyAppointmentsResponse with _$MyAppointmentsResponse {
  MyAppointmentsResponse._();

  factory MyAppointmentsResponse({
    @JsonKey(name: "serviceList")
        List<AppointmentListResponse>? appointmentsList,
  }) = _MyAppointmentsResponse;

  factory MyAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAppointmentsResponseFromJson(json);
}

@freezed
class AppointmentListResponse with _$AppointmentListResponse {
  AppointmentListResponse._();

  factory AppointmentListResponse({
    @JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
    @JsonKey(name: "bookingStatus") int? bookingStatus,
    @JsonKey(name: "serviceType") int? serviceType,
    @JsonKey(name: "_id") String? appointmentId,
    @JsonKey(name: "User") UserDetailsResponse? user,
    @JsonKey(name: "bookingDetails") BookingDetailsResponse? bookingDetails,
  }) = _AppointmentListResponse;

  factory AppointmentListResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentListResponseFromJson(json);
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
class BookingDetailsResponse with _$BookingDetailsResponse {
  BookingDetailsResponse._();

  factory BookingDetailsResponse({
    @JsonKey(name: "package") PackageResponse? package,
    @JsonKey(name: "_id") String? bookingId,
    @JsonKey(name: "run1") String? run1Time,
    @JsonKey(name: "run2") String? run2Time,
    @JsonKey(name: "startDate") String? startDate,
  }) = _BookingDetailsResponse;

  factory BookingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingDetailsResponseFromJson(json);
}

@freezed
class PackageResponse with _$PackageResponse {
  PackageResponse._();

  factory PackageResponse({
    @JsonKey(name: "description") String? subscriptionType,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "frequency") int? numberOfDays,
    @JsonKey(name: "dayfrequency") int? numberOfTimes,
  }) = _PackageResponse;

  factory PackageResponse.fromJson(Map<String, dynamic> json) =>
      _$PackageResponseFromJson(json);
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
