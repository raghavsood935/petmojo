// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_appointments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyAppointmentsResponse _$MyAppointmentsResponseFromJson(
    Map<String, dynamic> json) {
  return _MyAppointmentsResponse.fromJson(json);
}

/// @nodoc
class _$MyAppointmentsResponseTearOff {
  const _$MyAppointmentsResponseTearOff();

  _MyAppointmentsResponse call(
      {@JsonKey(name: "serviceList")
          List<AppointmentListResponse>? appointmentsList}) {
    return _MyAppointmentsResponse(
      appointmentsList: appointmentsList,
    );
  }

  MyAppointmentsResponse fromJson(Map<String, Object?> json) {
    return MyAppointmentsResponse.fromJson(json);
  }
}

/// @nodoc
const $MyAppointmentsResponse = _$MyAppointmentsResponseTearOff();

/// @nodoc
mixin _$MyAppointmentsResponse {
  @JsonKey(name: "serviceList")
  List<AppointmentListResponse>? get appointmentsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyAppointmentsResponseCopyWith<MyAppointmentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppointmentsResponseCopyWith<$Res> {
  factory $MyAppointmentsResponseCopyWith(MyAppointmentsResponse value,
          $Res Function(MyAppointmentsResponse) then) =
      _$MyAppointmentsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "serviceList")
          List<AppointmentListResponse>? appointmentsList});
}

/// @nodoc
class _$MyAppointmentsResponseCopyWithImpl<$Res>
    implements $MyAppointmentsResponseCopyWith<$Res> {
  _$MyAppointmentsResponseCopyWithImpl(this._value, this._then);

  final MyAppointmentsResponse _value;
  // ignore: unused_field
  final $Res Function(MyAppointmentsResponse) _then;

  @override
  $Res call({
    Object? appointmentsList = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentsList: appointmentsList == freezed
          ? _value.appointmentsList
          : appointmentsList // ignore: cast_nullable_to_non_nullable
              as List<AppointmentListResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$MyAppointmentsResponseCopyWith<$Res>
    implements $MyAppointmentsResponseCopyWith<$Res> {
  factory _$MyAppointmentsResponseCopyWith(_MyAppointmentsResponse value,
          $Res Function(_MyAppointmentsResponse) then) =
      __$MyAppointmentsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "serviceList")
          List<AppointmentListResponse>? appointmentsList});
}

/// @nodoc
class __$MyAppointmentsResponseCopyWithImpl<$Res>
    extends _$MyAppointmentsResponseCopyWithImpl<$Res>
    implements _$MyAppointmentsResponseCopyWith<$Res> {
  __$MyAppointmentsResponseCopyWithImpl(_MyAppointmentsResponse _value,
      $Res Function(_MyAppointmentsResponse) _then)
      : super(_value, (v) => _then(v as _MyAppointmentsResponse));

  @override
  _MyAppointmentsResponse get _value => super._value as _MyAppointmentsResponse;

  @override
  $Res call({
    Object? appointmentsList = freezed,
  }) {
    return _then(_MyAppointmentsResponse(
      appointmentsList: appointmentsList == freezed
          ? _value.appointmentsList
          : appointmentsList // ignore: cast_nullable_to_non_nullable
              as List<AppointmentListResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyAppointmentsResponse extends _MyAppointmentsResponse {
  _$_MyAppointmentsResponse(
      {@JsonKey(name: "serviceList") this.appointmentsList})
      : super._();

  factory _$_MyAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MyAppointmentsResponseFromJson(json);

  @override
  @JsonKey(name: "serviceList")
  final List<AppointmentListResponse>? appointmentsList;

  @override
  String toString() {
    return 'MyAppointmentsResponse(appointmentsList: $appointmentsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyAppointmentsResponse &&
            const DeepCollectionEquality()
                .equals(other.appointmentsList, appointmentsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appointmentsList));

  @JsonKey(ignore: true)
  @override
  _$MyAppointmentsResponseCopyWith<_MyAppointmentsResponse> get copyWith =>
      __$MyAppointmentsResponseCopyWithImpl<_MyAppointmentsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyAppointmentsResponseToJson(this);
  }
}

abstract class _MyAppointmentsResponse extends MyAppointmentsResponse {
  factory _MyAppointmentsResponse(
          {@JsonKey(name: "serviceList")
              List<AppointmentListResponse>? appointmentsList}) =
      _$_MyAppointmentsResponse;
  _MyAppointmentsResponse._() : super._();

  factory _MyAppointmentsResponse.fromJson(Map<String, dynamic> json) =
      _$_MyAppointmentsResponse.fromJson;

  @override
  @JsonKey(name: "serviceList")
  List<AppointmentListResponse>? get appointmentsList;
  @override
  @JsonKey(ignore: true)
  _$MyAppointmentsResponseCopyWith<_MyAppointmentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AppointmentListResponse _$AppointmentListResponseFromJson(
    Map<String, dynamic> json) {
  return _AppointmentListResponse.fromJson(json);
}

/// @nodoc
class _$AppointmentListResponseTearOff {
  const _$AppointmentListResponseTearOff();

  _AppointmentListResponse call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "bookingDetails")
          BookingDetailsResponse? bookingDetails}) {
    return _AppointmentListResponse(
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceType: serviceType,
      appointmentId: appointmentId,
      userId: userId,
      bookingDetails: bookingDetails,
    );
  }

  AppointmentListResponse fromJson(Map<String, Object?> json) {
    return AppointmentListResponse.fromJson(json);
  }
}

/// @nodoc
const $AppointmentListResponse = _$AppointmentListResponseTearOff();

/// @nodoc
mixin _$AppointmentListResponse {
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "User")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingDetails")
  BookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentListResponseCopyWith<AppointmentListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentListResponseCopyWith<$Res> {
  factory $AppointmentListResponseCopyWith(AppointmentListResponse value,
          $Res Function(AppointmentListResponse) then) =
      _$AppointmentListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus") int? bookingStatus,
      @JsonKey(name: "serviceType") int? serviceType,
      @JsonKey(name: "_id") String? appointmentId,
      @JsonKey(name: "User") String? userId,
      @JsonKey(name: "bookingDetails") BookingDetailsResponse? bookingDetails});

  $BookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$AppointmentListResponseCopyWithImpl<$Res>
    implements $AppointmentListResponseCopyWith<$Res> {
  _$AppointmentListResponseCopyWithImpl(this._value, this._then);

  final AppointmentListResponse _value;
  // ignore: unused_field
  final $Res Function(AppointmentListResponse) _then;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? userId = freezed,
    Object? bookingDetails = freezed,
  }) {
    return _then(_value.copyWith(
      petDetails: petDetails == freezed
          ? _value.petDetails
          : petDetails // ignore: cast_nullable_to_non_nullable
              as List<PetDetailsResponse>?,
      bookingStatus: bookingStatus == freezed
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int?,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as BookingDetailsResponse?,
    ));
  }

  @override
  $BookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $BookingDetailsResponseCopyWith<$Res>(_value.bookingDetails!,
        (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentListResponseCopyWith<$Res>
    implements $AppointmentListResponseCopyWith<$Res> {
  factory _$AppointmentListResponseCopyWith(_AppointmentListResponse value,
          $Res Function(_AppointmentListResponse) then) =
      __$AppointmentListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petDetails") List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus") int? bookingStatus,
      @JsonKey(name: "serviceType") int? serviceType,
      @JsonKey(name: "_id") String? appointmentId,
      @JsonKey(name: "User") String? userId,
      @JsonKey(name: "bookingDetails") BookingDetailsResponse? bookingDetails});

  @override
  $BookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$AppointmentListResponseCopyWithImpl<$Res>
    extends _$AppointmentListResponseCopyWithImpl<$Res>
    implements _$AppointmentListResponseCopyWith<$Res> {
  __$AppointmentListResponseCopyWithImpl(_AppointmentListResponse _value,
      $Res Function(_AppointmentListResponse) _then)
      : super(_value, (v) => _then(v as _AppointmentListResponse));

  @override
  _AppointmentListResponse get _value =>
      super._value as _AppointmentListResponse;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? userId = freezed,
    Object? bookingDetails = freezed,
  }) {
    return _then(_AppointmentListResponse(
      petDetails: petDetails == freezed
          ? _value.petDetails
          : petDetails // ignore: cast_nullable_to_non_nullable
              as List<PetDetailsResponse>?,
      bookingStatus: bookingStatus == freezed
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int?,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as BookingDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentListResponse extends _AppointmentListResponse {
  _$_AppointmentListResponse(
      {@JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "bookingStatus") this.bookingStatus,
      @JsonKey(name: "serviceType") this.serviceType,
      @JsonKey(name: "_id") this.appointmentId,
      @JsonKey(name: "User") this.userId,
      @JsonKey(name: "bookingDetails") this.bookingDetails})
      : super._();

  factory _$_AppointmentListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentListResponseFromJson(json);

  @override
  @JsonKey(name: "petDetails")
  final List<PetDetailsResponse>? petDetails;
  @override
  @JsonKey(name: "bookingStatus")
  final int? bookingStatus;
  @override
  @JsonKey(name: "serviceType")
  final int? serviceType;
  @override
  @JsonKey(name: "_id")
  final String? appointmentId;
  @override
  @JsonKey(name: "User")
  final String? userId;
  @override
  @JsonKey(name: "bookingDetails")
  final BookingDetailsResponse? bookingDetails;

  @override
  String toString() {
    return 'AppointmentListResponse(petDetails: $petDetails, bookingStatus: $bookingStatus, serviceType: $serviceType, appointmentId: $appointmentId, userId: $userId, bookingDetails: $bookingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentListResponse &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookingDetails, bookingDetails) ||
                other.bookingDetails == bookingDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petDetails),
      bookingStatus,
      serviceType,
      appointmentId,
      userId,
      bookingDetails);

  @JsonKey(ignore: true)
  @override
  _$AppointmentListResponseCopyWith<_AppointmentListResponse> get copyWith =>
      __$AppointmentListResponseCopyWithImpl<_AppointmentListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentListResponseToJson(this);
  }
}

abstract class _AppointmentListResponse extends AppointmentListResponse {
  factory _AppointmentListResponse(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "bookingDetails")
          BookingDetailsResponse? bookingDetails}) = _$_AppointmentListResponse;
  _AppointmentListResponse._() : super._();

  factory _AppointmentListResponse.fromJson(Map<String, dynamic> json) =
      _$_AppointmentListResponse.fromJson;

  @override
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails;
  @override
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus;
  @override
  @JsonKey(name: "serviceType")
  int? get serviceType;
  @override
  @JsonKey(name: "_id")
  String? get appointmentId;
  @override
  @JsonKey(name: "User")
  String? get userId;
  @override
  @JsonKey(name: "bookingDetails")
  BookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(ignore: true)
  _$AppointmentListResponseCopyWith<_AppointmentListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDetailsResponse _$BookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _BookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$BookingDetailsResponseTearOff {
  const _$BookingDetailsResponseTearOff();

  _BookingDetailsResponse call(
      {@JsonKey(name: "package") PackageResponse? package,
      @JsonKey(name: "_id") String? bookingId,
      @JsonKey(name: "run1") String? run1Time,
      @JsonKey(name: "run2") String? run2Time,
      @JsonKey(name: "startDate") String? startDate}) {
    return _BookingDetailsResponse(
      package: package,
      bookingId: bookingId,
      run1Time: run1Time,
      run2Time: run2Time,
      startDate: startDate,
    );
  }

  BookingDetailsResponse fromJson(Map<String, Object?> json) {
    return BookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $BookingDetailsResponse = _$BookingDetailsResponseTearOff();

/// @nodoc
mixin _$BookingDetailsResponse {
  @JsonKey(name: "package")
  PackageResponse? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "run1")
  String? get run1Time => throw _privateConstructorUsedError;
  @JsonKey(name: "run2")
  String? get run2Time => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDetailsResponseCopyWith<BookingDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsResponseCopyWith<$Res> {
  factory $BookingDetailsResponseCopyWith(BookingDetailsResponse value,
          $Res Function(BookingDetailsResponse) then) =
      _$BookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "package") PackageResponse? package,
      @JsonKey(name: "_id") String? bookingId,
      @JsonKey(name: "run1") String? run1Time,
      @JsonKey(name: "run2") String? run2Time,
      @JsonKey(name: "startDate") String? startDate});

  $PackageResponseCopyWith<$Res>? get package;
}

/// @nodoc
class _$BookingDetailsResponseCopyWithImpl<$Res>
    implements $BookingDetailsResponseCopyWith<$Res> {
  _$BookingDetailsResponseCopyWithImpl(this._value, this._then);

  final BookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(BookingDetailsResponse) _then;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? run1Time = freezed,
    Object? run2Time = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageResponse?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      run1Time: run1Time == freezed
          ? _value.run1Time
          : run1Time // ignore: cast_nullable_to_non_nullable
              as String?,
      run2Time: run2Time == freezed
          ? _value.run2Time
          : run2Time // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PackageResponseCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageResponseCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc
abstract class _$BookingDetailsResponseCopyWith<$Res>
    implements $BookingDetailsResponseCopyWith<$Res> {
  factory _$BookingDetailsResponseCopyWith(_BookingDetailsResponse value,
          $Res Function(_BookingDetailsResponse) then) =
      __$BookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "package") PackageResponse? package,
      @JsonKey(name: "_id") String? bookingId,
      @JsonKey(name: "run1") String? run1Time,
      @JsonKey(name: "run2") String? run2Time,
      @JsonKey(name: "startDate") String? startDate});

  @override
  $PackageResponseCopyWith<$Res>? get package;
}

/// @nodoc
class __$BookingDetailsResponseCopyWithImpl<$Res>
    extends _$BookingDetailsResponseCopyWithImpl<$Res>
    implements _$BookingDetailsResponseCopyWith<$Res> {
  __$BookingDetailsResponseCopyWithImpl(_BookingDetailsResponse _value,
      $Res Function(_BookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _BookingDetailsResponse));

  @override
  _BookingDetailsResponse get _value => super._value as _BookingDetailsResponse;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? run1Time = freezed,
    Object? run2Time = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_BookingDetailsResponse(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageResponse?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      run1Time: run1Time == freezed
          ? _value.run1Time
          : run1Time // ignore: cast_nullable_to_non_nullable
              as String?,
      run2Time: run2Time == freezed
          ? _value.run2Time
          : run2Time // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingDetailsResponse extends _BookingDetailsResponse {
  _$_BookingDetailsResponse(
      {@JsonKey(name: "package") this.package,
      @JsonKey(name: "_id") this.bookingId,
      @JsonKey(name: "run1") this.run1Time,
      @JsonKey(name: "run2") this.run2Time,
      @JsonKey(name: "startDate") this.startDate})
      : super._();

  factory _$_BookingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "package")
  final PackageResponse? package;
  @override
  @JsonKey(name: "_id")
  final String? bookingId;
  @override
  @JsonKey(name: "run1")
  final String? run1Time;
  @override
  @JsonKey(name: "run2")
  final String? run2Time;
  @override
  @JsonKey(name: "startDate")
  final String? startDate;

  @override
  String toString() {
    return 'BookingDetailsResponse(package: $package, bookingId: $bookingId, run1Time: $run1Time, run2Time: $run2Time, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingDetailsResponse &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.run1Time, run1Time) ||
                other.run1Time == run1Time) &&
            (identical(other.run2Time, run2Time) ||
                other.run2Time == run2Time) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, package, bookingId, run1Time, run2Time, startDate);

  @JsonKey(ignore: true)
  @override
  _$BookingDetailsResponseCopyWith<_BookingDetailsResponse> get copyWith =>
      __$BookingDetailsResponseCopyWithImpl<_BookingDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingDetailsResponseToJson(this);
  }
}

abstract class _BookingDetailsResponse extends BookingDetailsResponse {
  factory _BookingDetailsResponse(
          {@JsonKey(name: "package") PackageResponse? package,
          @JsonKey(name: "_id") String? bookingId,
          @JsonKey(name: "run1") String? run1Time,
          @JsonKey(name: "run2") String? run2Time,
          @JsonKey(name: "startDate") String? startDate}) =
      _$_BookingDetailsResponse;
  _BookingDetailsResponse._() : super._();

  factory _BookingDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_BookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "package")
  PackageResponse? get package;
  @override
  @JsonKey(name: "_id")
  String? get bookingId;
  @override
  @JsonKey(name: "run1")
  String? get run1Time;
  @override
  @JsonKey(name: "run2")
  String? get run2Time;
  @override
  @JsonKey(name: "startDate")
  String? get startDate;
  @override
  @JsonKey(ignore: true)
  _$BookingDetailsResponseCopyWith<_BookingDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageResponse _$PackageResponseFromJson(Map<String, dynamic> json) {
  return _PackageResponse.fromJson(json);
}

/// @nodoc
class _$PackageResponseTearOff {
  const _$PackageResponseTearOff();

  _PackageResponse call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes}) {
    return _PackageResponse(
      subscriptionType: subscriptionType,
      amount: amount,
      numberOfDays: numberOfDays,
      numberOfTimes: numberOfTimes,
    );
  }

  PackageResponse fromJson(Map<String, Object?> json) {
    return PackageResponse.fromJson(json);
  }
}

/// @nodoc
const $PackageResponse = _$PackageResponseTearOff();

/// @nodoc
mixin _$PackageResponse {
  @JsonKey(name: "description")
  String? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency")
  int? get numberOfDays => throw _privateConstructorUsedError;
  @JsonKey(name: "dayfrequency")
  int? get numberOfTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageResponseCopyWith<PackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageResponseCopyWith<$Res> {
  factory $PackageResponseCopyWith(
          PackageResponse value, $Res Function(PackageResponse) then) =
      _$PackageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes});
}

/// @nodoc
class _$PackageResponseCopyWithImpl<$Res>
    implements $PackageResponseCopyWith<$Res> {
  _$PackageResponseCopyWithImpl(this._value, this._then);

  final PackageResponse _value;
  // ignore: unused_field
  final $Res Function(PackageResponse) _then;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
    Object? numberOfDays = freezed,
    Object? numberOfTimes = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionType: subscriptionType == freezed
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: numberOfDays == freezed
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfTimes: numberOfTimes == freezed
          ? _value.numberOfTimes
          : numberOfTimes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PackageResponseCopyWith<$Res>
    implements $PackageResponseCopyWith<$Res> {
  factory _$PackageResponseCopyWith(
          _PackageResponse value, $Res Function(_PackageResponse) then) =
      __$PackageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes});
}

/// @nodoc
class __$PackageResponseCopyWithImpl<$Res>
    extends _$PackageResponseCopyWithImpl<$Res>
    implements _$PackageResponseCopyWith<$Res> {
  __$PackageResponseCopyWithImpl(
      _PackageResponse _value, $Res Function(_PackageResponse) _then)
      : super(_value, (v) => _then(v as _PackageResponse));

  @override
  _PackageResponse get _value => super._value as _PackageResponse;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
    Object? numberOfDays = freezed,
    Object? numberOfTimes = freezed,
  }) {
    return _then(_PackageResponse(
      subscriptionType: subscriptionType == freezed
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: numberOfDays == freezed
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfTimes: numberOfTimes == freezed
          ? _value.numberOfTimes
          : numberOfTimes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageResponse extends _PackageResponse {
  _$_PackageResponse(
      {@JsonKey(name: "description") this.subscriptionType,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "frequency") this.numberOfDays,
      @JsonKey(name: "dayfrequency") this.numberOfTimes})
      : super._();

  factory _$_PackageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PackageResponseFromJson(json);

  @override
  @JsonKey(name: "description")
  final String? subscriptionType;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "frequency")
  final int? numberOfDays;
  @override
  @JsonKey(name: "dayfrequency")
  final int? numberOfTimes;

  @override
  String toString() {
    return 'PackageResponse(subscriptionType: $subscriptionType, amount: $amount, numberOfDays: $numberOfDays, numberOfTimes: $numberOfTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageResponse &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays) &&
            (identical(other.numberOfTimes, numberOfTimes) ||
                other.numberOfTimes == numberOfTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, subscriptionType, amount, numberOfDays, numberOfTimes);

  @JsonKey(ignore: true)
  @override
  _$PackageResponseCopyWith<_PackageResponse> get copyWith =>
      __$PackageResponseCopyWithImpl<_PackageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageResponseToJson(this);
  }
}

abstract class _PackageResponse extends PackageResponse {
  factory _PackageResponse(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes}) = _$_PackageResponse;
  _PackageResponse._() : super._();

  factory _PackageResponse.fromJson(Map<String, dynamic> json) =
      _$_PackageResponse.fromJson;

  @override
  @JsonKey(name: "description")
  String? get subscriptionType;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "frequency")
  int? get numberOfDays;
  @override
  @JsonKey(name: "dayfrequency")
  int? get numberOfTimes;
  @override
  @JsonKey(ignore: true)
  _$PackageResponseCopyWith<_PackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PetDetailsResponse _$PetDetailsResponseFromJson(Map<String, dynamic> json) {
  return _PetDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PetDetailsResponseTearOff {
  const _$PetDetailsResponseTearOff();

  _PetDetailsResponse call(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName}) {
    return _PetDetailsResponse(
      petId: petId,
      petName: petName,
      petUserName: petUserName,
    );
  }

  PetDetailsResponse fromJson(Map<String, Object?> json) {
    return PetDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PetDetailsResponse = _$PetDetailsResponseTearOff();

/// @nodoc
mixin _$PetDetailsResponse {
  @JsonKey(name: "_id")
  String? get petId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get petName => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get petUserName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetDetailsResponseCopyWith<PetDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDetailsResponseCopyWith<$Res> {
  factory $PetDetailsResponseCopyWith(
          PetDetailsResponse value, $Res Function(PetDetailsResponse) then) =
      _$PetDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName});
}

/// @nodoc
class _$PetDetailsResponseCopyWithImpl<$Res>
    implements $PetDetailsResponseCopyWith<$Res> {
  _$PetDetailsResponseCopyWithImpl(this._value, this._then);

  final PetDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PetDetailsResponse) _then;

  @override
  $Res call({
    Object? petId = freezed,
    Object? petName = freezed,
    Object? petUserName = freezed,
  }) {
    return _then(_value.copyWith(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String?,
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String?,
      petUserName: petUserName == freezed
          ? _value.petUserName
          : petUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PetDetailsResponseCopyWith<$Res>
    implements $PetDetailsResponseCopyWith<$Res> {
  factory _$PetDetailsResponseCopyWith(
          _PetDetailsResponse value, $Res Function(_PetDetailsResponse) then) =
      __$PetDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName});
}

/// @nodoc
class __$PetDetailsResponseCopyWithImpl<$Res>
    extends _$PetDetailsResponseCopyWithImpl<$Res>
    implements _$PetDetailsResponseCopyWith<$Res> {
  __$PetDetailsResponseCopyWithImpl(
      _PetDetailsResponse _value, $Res Function(_PetDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PetDetailsResponse));

  @override
  _PetDetailsResponse get _value => super._value as _PetDetailsResponse;

  @override
  $Res call({
    Object? petId = freezed,
    Object? petName = freezed,
    Object? petUserName = freezed,
  }) {
    return _then(_PetDetailsResponse(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String?,
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String?,
      petUserName: petUserName == freezed
          ? _value.petUserName
          : petUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetDetailsResponse extends _PetDetailsResponse {
  _$_PetDetailsResponse(
      {@JsonKey(name: "_id") this.petId,
      @JsonKey(name: "name") this.petName,
      @JsonKey(name: "username") this.petUserName})
      : super._();

  factory _$_PetDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? petId;
  @override
  @JsonKey(name: "name")
  final String? petName;
  @override
  @JsonKey(name: "username")
  final String? petUserName;

  @override
  String toString() {
    return 'PetDetailsResponse(petId: $petId, petName: $petName, petUserName: $petUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetDetailsResponse &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.petUserName, petUserName) ||
                other.petUserName == petUserName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petId, petName, petUserName);

  @JsonKey(ignore: true)
  @override
  _$PetDetailsResponseCopyWith<_PetDetailsResponse> get copyWith =>
      __$PetDetailsResponseCopyWithImpl<_PetDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetDetailsResponseToJson(this);
  }
}

abstract class _PetDetailsResponse extends PetDetailsResponse {
  factory _PetDetailsResponse(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName}) = _$_PetDetailsResponse;
  _PetDetailsResponse._() : super._();

  factory _PetDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PetDetailsResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get petId;
  @override
  @JsonKey(name: "name")
  String? get petName;
  @override
  @JsonKey(name: "username")
  String? get petUserName;
  @override
  @JsonKey(ignore: true)
  _$PetDetailsResponseCopyWith<_PetDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
