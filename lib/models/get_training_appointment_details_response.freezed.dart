// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_training_appointment_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTrainingAppointmentDetailsResponse
    _$GetTrainingAppointmentDetailsResponseFromJson(Map<String, dynamic> json) {
  return _GetAppointmentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetTrainingAppointmentDetailsResponseTearOff {
  const _$GetTrainingAppointmentDetailsResponseTearOff();

  _GetAppointmentDetailsResponse call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "israted")
          bool? hasTestimony,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "DogTrainingbookingDetails")
          GetTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "index")
          int? index}) {
    return _GetAppointmentDetailsResponse(
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceStatus: serviceStatus,
      hasTestimony: hasTestimony,
      serviceType: serviceType,
      appointmentId: appointmentId,
      userId: userId,
      partner: partner,
      bookingDetails: bookingDetails,
      index: index,
    );
  }

  GetTrainingAppointmentDetailsResponse fromJson(Map<String, Object?> json) {
    return GetTrainingAppointmentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetTrainingAppointmentDetailsResponse =
    _$GetTrainingAppointmentDetailsResponseTearOff();

/// @nodoc
mixin _$GetTrainingAppointmentDetailsResponse {
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceStatus")
  int? get serviceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "israted")
  bool? get hasTestimony => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "User")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get partner => throw _privateConstructorUsedError;
  @JsonKey(name: "DogTrainingbookingDetails")
  GetTrainingBookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  int? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTrainingAppointmentDetailsResponseCopyWith<
          GetTrainingAppointmentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrainingAppointmentDetailsResponseCopyWith<$Res> {
  factory $GetTrainingAppointmentDetailsResponseCopyWith(
          GetTrainingAppointmentDetailsResponse value,
          $Res Function(GetTrainingAppointmentDetailsResponse) then) =
      _$GetTrainingAppointmentDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "israted")
          bool? hasTestimony,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "DogTrainingbookingDetails")
          GetTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "index")
          int? index});

  $UserDetailsResponseCopyWith<$Res>? get partner;
  $GetTrainingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$GetTrainingAppointmentDetailsResponseCopyWithImpl<$Res>
    implements $GetTrainingAppointmentDetailsResponseCopyWith<$Res> {
  _$GetTrainingAppointmentDetailsResponseCopyWithImpl(this._value, this._then);

  final GetTrainingAppointmentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetTrainingAppointmentDetailsResponse) _then;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? hasTestimony = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? userId = freezed,
    Object? partner = freezed,
    Object? bookingDetails = freezed,
    Object? index = freezed,
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
      serviceStatus: serviceStatus == freezed
          ? _value.serviceStatus
          : serviceStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      hasTestimony: hasTestimony == freezed
          ? _value.hasTestimony
          : hasTestimony // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as GetTrainingBookingDetailsResponse?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UserDetailsResponseCopyWith<$Res>? get partner {
    if (_value.partner == null) {
      return null;
    }

    return $UserDetailsResponseCopyWith<$Res>(_value.partner!, (value) {
      return _then(_value.copyWith(partner: value));
    });
  }

  @override
  $GetTrainingBookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $GetTrainingBookingDetailsResponseCopyWith<$Res>(
        _value.bookingDetails!, (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$GetAppointmentDetailsResponseCopyWith<$Res>
    implements $GetTrainingAppointmentDetailsResponseCopyWith<$Res> {
  factory _$GetAppointmentDetailsResponseCopyWith(
          _GetAppointmentDetailsResponse value,
          $Res Function(_GetAppointmentDetailsResponse) then) =
      __$GetAppointmentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "israted")
          bool? hasTestimony,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "DogTrainingbookingDetails")
          GetTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "index")
          int? index});

  @override
  $UserDetailsResponseCopyWith<$Res>? get partner;
  @override
  $GetTrainingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$GetAppointmentDetailsResponseCopyWithImpl<$Res>
    extends _$GetTrainingAppointmentDetailsResponseCopyWithImpl<$Res>
    implements _$GetAppointmentDetailsResponseCopyWith<$Res> {
  __$GetAppointmentDetailsResponseCopyWithImpl(
      _GetAppointmentDetailsResponse _value,
      $Res Function(_GetAppointmentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetAppointmentDetailsResponse));

  @override
  _GetAppointmentDetailsResponse get _value =>
      super._value as _GetAppointmentDetailsResponse;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? hasTestimony = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? userId = freezed,
    Object? partner = freezed,
    Object? bookingDetails = freezed,
    Object? index = freezed,
  }) {
    return _then(_GetAppointmentDetailsResponse(
      petDetails: petDetails == freezed
          ? _value.petDetails
          : petDetails // ignore: cast_nullable_to_non_nullable
              as List<PetDetailsResponse>?,
      bookingStatus: bookingStatus == freezed
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceStatus: serviceStatus == freezed
          ? _value.serviceStatus
          : serviceStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      hasTestimony: hasTestimony == freezed
          ? _value.hasTestimony
          : hasTestimony // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as GetTrainingBookingDetailsResponse?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAppointmentDetailsResponse extends _GetAppointmentDetailsResponse {
  _$_GetAppointmentDetailsResponse(
      {@JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "bookingStatus") this.bookingStatus,
      @JsonKey(name: "serviceStatus") this.serviceStatus,
      @JsonKey(name: "israted") this.hasTestimony,
      @JsonKey(name: "serviceType") this.serviceType,
      @JsonKey(name: "_id") this.appointmentId,
      @JsonKey(name: "User") this.userId,
      @JsonKey(name: "ServiceProvider") this.partner,
      @JsonKey(name: "DogTrainingbookingDetails") this.bookingDetails,
      @JsonKey(name: "index") this.index})
      : super._();

  factory _$_GetAppointmentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetAppointmentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "petDetails")
  final List<PetDetailsResponse>? petDetails;
  @override
  @JsonKey(name: "bookingStatus")
  final int? bookingStatus;
  @override
  @JsonKey(name: "serviceStatus")
  final int? serviceStatus;
  @override
  @JsonKey(name: "israted")
  final bool? hasTestimony;
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
  @JsonKey(name: "ServiceProvider")
  final UserDetailsResponse? partner;
  @override
  @JsonKey(name: "DogTrainingbookingDetails")
  final GetTrainingBookingDetailsResponse? bookingDetails;
  @override
  @JsonKey(name: "index")
  final int? index;

  @override
  String toString() {
    return 'GetTrainingAppointmentDetailsResponse(petDetails: $petDetails, bookingStatus: $bookingStatus, serviceStatus: $serviceStatus, hasTestimony: $hasTestimony, serviceType: $serviceType, appointmentId: $appointmentId, userId: $userId, partner: $partner, bookingDetails: $bookingDetails, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAppointmentDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            const DeepCollectionEquality()
                .equals(other.bookingStatus, bookingStatus) &&
            const DeepCollectionEquality()
                .equals(other.serviceStatus, serviceStatus) &&
            const DeepCollectionEquality()
                .equals(other.hasTestimony, hasTestimony) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.partner, partner) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petDetails),
      const DeepCollectionEquality().hash(bookingStatus),
      const DeepCollectionEquality().hash(serviceStatus),
      const DeepCollectionEquality().hash(hasTestimony),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(partner),
      const DeepCollectionEquality().hash(bookingDetails),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$GetAppointmentDetailsResponseCopyWith<_GetAppointmentDetailsResponse>
      get copyWith => __$GetAppointmentDetailsResponseCopyWithImpl<
          _GetAppointmentDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAppointmentDetailsResponseToJson(this);
  }
}

abstract class _GetAppointmentDetailsResponse
    extends GetTrainingAppointmentDetailsResponse {
  factory _GetAppointmentDetailsResponse(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "israted")
          bool? hasTestimony,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "DogTrainingbookingDetails")
          GetTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "index")
          int? index}) = _$_GetAppointmentDetailsResponse;
  _GetAppointmentDetailsResponse._() : super._();

  factory _GetAppointmentDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetAppointmentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails;
  @override
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus;
  @override
  @JsonKey(name: "serviceStatus")
  int? get serviceStatus;
  @override
  @JsonKey(name: "israted")
  bool? get hasTestimony;
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
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get partner;
  @override
  @JsonKey(name: "DogTrainingbookingDetails")
  GetTrainingBookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(name: "index")
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$GetAppointmentDetailsResponseCopyWith<_GetAppointmentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetTrainingBookingDetailsResponse _$GetTrainingBookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetTrainingBookingDetailsResponseTearOff {
  const _$GetTrainingBookingDetailsResponseTearOff();

  _GetBookingDetailsResponse call(
      {@JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "package")
          TrainingPackageResponse? package,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "runDetails")
          List<trainDetailsResponse>? runDetails}) {
    return _GetBookingDetailsResponse(
      petRunningLocation: petRunningLocation,
      package: package,
      numberOfPets: numberOfPets,
      startDate: startDate,
      runDetails: runDetails,
    );
  }

  GetTrainingBookingDetailsResponse fromJson(Map<String, Object?> json) {
    return GetTrainingBookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetTrainingBookingDetailsResponse =
    _$GetTrainingBookingDetailsResponseTearOff();

/// @nodoc
mixin _$GetTrainingBookingDetailsResponse {
  @JsonKey(name: "petRunningLocation")
  LocationResponse? get petRunningLocation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "package")
  TrainingPackageResponse? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "runDetails")
  List<trainDetailsResponse>? get runDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTrainingBookingDetailsResponseCopyWith<GetTrainingBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrainingBookingDetailsResponseCopyWith<$Res> {
  factory $GetTrainingBookingDetailsResponseCopyWith(
          GetTrainingBookingDetailsResponse value,
          $Res Function(GetTrainingBookingDetailsResponse) then) =
      _$GetTrainingBookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "package")
          TrainingPackageResponse? package,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "runDetails")
          List<trainDetailsResponse>? runDetails});

  $LocationResponseCopyWith<$Res>? get petRunningLocation;
  $TrainingPackageResponseCopyWith<$Res>? get package;
}

/// @nodoc
class _$GetTrainingBookingDetailsResponseCopyWithImpl<$Res>
    implements $GetTrainingBookingDetailsResponseCopyWith<$Res> {
  _$GetTrainingBookingDetailsResponseCopyWithImpl(this._value, this._then);

  final GetTrainingBookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetTrainingBookingDetailsResponse) _then;

  @override
  $Res call({
    Object? petRunningLocation = freezed,
    Object? package = freezed,
    Object? numberOfPets = freezed,
    Object? startDate = freezed,
    Object? runDetails = freezed,
  }) {
    return _then(_value.copyWith(
      petRunningLocation: petRunningLocation == freezed
          ? _value.petRunningLocation
          : petRunningLocation // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as TrainingPackageResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      runDetails: runDetails == freezed
          ? _value.runDetails
          : runDetails // ignore: cast_nullable_to_non_nullable
              as List<trainDetailsResponse>?,
    ));
  }

  @override
  $LocationResponseCopyWith<$Res>? get petRunningLocation {
    if (_value.petRunningLocation == null) {
      return null;
    }

    return $LocationResponseCopyWith<$Res>(_value.petRunningLocation!, (value) {
      return _then(_value.copyWith(petRunningLocation: value));
    });
  }

  @override
  $TrainingPackageResponseCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $TrainingPackageResponseCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc
abstract class _$GetBookingDetailsResponseCopyWith<$Res>
    implements $GetTrainingBookingDetailsResponseCopyWith<$Res> {
  factory _$GetBookingDetailsResponseCopyWith(_GetBookingDetailsResponse value,
          $Res Function(_GetBookingDetailsResponse) then) =
      __$GetBookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "package")
          TrainingPackageResponse? package,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "runDetails")
          List<trainDetailsResponse>? runDetails});

  @override
  $LocationResponseCopyWith<$Res>? get petRunningLocation;
  @override
  $TrainingPackageResponseCopyWith<$Res>? get package;
}

/// @nodoc
class __$GetBookingDetailsResponseCopyWithImpl<$Res>
    extends _$GetTrainingBookingDetailsResponseCopyWithImpl<$Res>
    implements _$GetBookingDetailsResponseCopyWith<$Res> {
  __$GetBookingDetailsResponseCopyWithImpl(_GetBookingDetailsResponse _value,
      $Res Function(_GetBookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetBookingDetailsResponse));

  @override
  _GetBookingDetailsResponse get _value =>
      super._value as _GetBookingDetailsResponse;

  @override
  $Res call({
    Object? petRunningLocation = freezed,
    Object? package = freezed,
    Object? numberOfPets = freezed,
    Object? startDate = freezed,
    Object? runDetails = freezed,
  }) {
    return _then(_GetBookingDetailsResponse(
      petRunningLocation: petRunningLocation == freezed
          ? _value.petRunningLocation
          : petRunningLocation // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as TrainingPackageResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      runDetails: runDetails == freezed
          ? _value.runDetails
          : runDetails // ignore: cast_nullable_to_non_nullable
              as List<trainDetailsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBookingDetailsResponse extends _GetBookingDetailsResponse {
  _$_GetBookingDetailsResponse(
      {@JsonKey(name: "petRunningLocation") this.petRunningLocation,
      @JsonKey(name: "package") this.package,
      @JsonKey(name: "numberOfPets") this.numberOfPets,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "runDetails") this.runDetails})
      : super._();

  factory _$_GetBookingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetBookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "petRunningLocation")
  final LocationResponse? petRunningLocation;
  @override
  @JsonKey(name: "package")
  final TrainingPackageResponse? package;
  @override
  @JsonKey(name: "numberOfPets")
  final int? numberOfPets;
  @override
  @JsonKey(name: "startDate")
  final String? startDate;
  @override
  @JsonKey(name: "runDetails")
  final List<trainDetailsResponse>? runDetails;

  @override
  String toString() {
    return 'GetTrainingBookingDetailsResponse(petRunningLocation: $petRunningLocation, package: $package, numberOfPets: $numberOfPets, startDate: $startDate, runDetails: $runDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBookingDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.petRunningLocation, petRunningLocation) &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPets, numberOfPets) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.runDetails, runDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petRunningLocation),
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(numberOfPets),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(runDetails));

  @JsonKey(ignore: true)
  @override
  _$GetBookingDetailsResponseCopyWith<_GetBookingDetailsResponse>
      get copyWith =>
          __$GetBookingDetailsResponseCopyWithImpl<_GetBookingDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBookingDetailsResponseToJson(this);
  }
}

abstract class _GetBookingDetailsResponse
    extends GetTrainingBookingDetailsResponse {
  factory _GetBookingDetailsResponse(
          {@JsonKey(name: "petRunningLocation")
              LocationResponse? petRunningLocation,
          @JsonKey(name: "package")
              TrainingPackageResponse? package,
          @JsonKey(name: "numberOfPets")
              int? numberOfPets,
          @JsonKey(name: "startDate")
              String? startDate,
          @JsonKey(name: "runDetails")
              List<trainDetailsResponse>? runDetails}) =
      _$_GetBookingDetailsResponse;
  _GetBookingDetailsResponse._() : super._();

  factory _GetBookingDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetBookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "petRunningLocation")
  LocationResponse? get petRunningLocation;
  @override
  @JsonKey(name: "package")
  TrainingPackageResponse? get package;
  @override
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets;
  @override
  @JsonKey(name: "startDate")
  String? get startDate;
  @override
  @JsonKey(name: "runDetails")
  List<trainDetailsResponse>? get runDetails;
  @override
  @JsonKey(ignore: true)
  _$GetBookingDetailsResponseCopyWith<_GetBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
class _$LocationResponseTearOff {
  const _$LocationResponseTearOff();

  _LocationResponse call(
      {@JsonKey(name: "addressLine1") String? addressLine1,
      @JsonKey(name: "addressLine2") String? addressLine2,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "pinCode") String? pinCode}) {
    return _LocationResponse(
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      state: state,
      city: city,
      pinCode: pinCode,
    );
  }

  LocationResponse fromJson(Map<String, Object?> json) {
    return LocationResponse.fromJson(json);
  }
}

/// @nodoc
const $LocationResponse = _$LocationResponseTearOff();

/// @nodoc
mixin _$LocationResponse {
  @JsonKey(name: "addressLine1")
  String? get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: "addressLine2")
  String? get addressLine2 => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "pinCode")
  String? get pinCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "addressLine1") String? addressLine1,
      @JsonKey(name: "addressLine2") String? addressLine2,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "pinCode") String? pinCode});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  final LocationResponse _value;
  // ignore: unused_field
  final $Res Function(LocationResponse) _then;

  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? pinCode = freezed,
  }) {
    return _then(_value.copyWith(
      addressLine1: addressLine1 == freezed
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: addressLine2 == freezed
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocationResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$LocationResponseCopyWith(
          _LocationResponse value, $Res Function(_LocationResponse) then) =
      __$LocationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "addressLine1") String? addressLine1,
      @JsonKey(name: "addressLine2") String? addressLine2,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "pinCode") String? pinCode});
}

/// @nodoc
class __$LocationResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements _$LocationResponseCopyWith<$Res> {
  __$LocationResponseCopyWithImpl(
      _LocationResponse _value, $Res Function(_LocationResponse) _then)
      : super(_value, (v) => _then(v as _LocationResponse));

  @override
  _LocationResponse get _value => super._value as _LocationResponse;

  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? pinCode = freezed,
  }) {
    return _then(_LocationResponse(
      addressLine1: addressLine1 == freezed
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: addressLine2 == freezed
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationResponse extends _LocationResponse {
  _$_LocationResponse(
      {@JsonKey(name: "addressLine1") this.addressLine1,
      @JsonKey(name: "addressLine2") this.addressLine2,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "pinCode") this.pinCode})
      : super._();

  factory _$_LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationResponseFromJson(json);

  @override
  @JsonKey(name: "addressLine1")
  final String? addressLine1;
  @override
  @JsonKey(name: "addressLine2")
  final String? addressLine2;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "pinCode")
  final String? pinCode;

  @override
  String toString() {
    return 'LocationResponse(addressLine1: $addressLine1, addressLine2: $addressLine2, state: $state, city: $city, pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationResponse &&
            const DeepCollectionEquality()
                .equals(other.addressLine1, addressLine1) &&
            const DeepCollectionEquality()
                .equals(other.addressLine2, addressLine2) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressLine1),
      const DeepCollectionEquality().hash(addressLine2),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  _$LocationResponseCopyWith<_LocationResponse> get copyWith =>
      __$LocationResponseCopyWithImpl<_LocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationResponseToJson(this);
  }
}

abstract class _LocationResponse extends LocationResponse {
  factory _LocationResponse(
      {@JsonKey(name: "addressLine1") String? addressLine1,
      @JsonKey(name: "addressLine2") String? addressLine2,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "pinCode") String? pinCode}) = _$_LocationResponse;
  _LocationResponse._() : super._();

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationResponse.fromJson;

  @override
  @JsonKey(name: "addressLine1")
  String? get addressLine1;
  @override
  @JsonKey(name: "addressLine2")
  String? get addressLine2;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "pinCode")
  String? get pinCode;
  @override
  @JsonKey(ignore: true)
  _$LocationResponseCopyWith<_LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

trainDetailsResponse _$trainDetailsResponseFromJson(Map<String, dynamic> json) {
  return _trainDetailsResponse.fromJson(json);
}

/// @nodoc
class _$trainDetailsResponseTearOff {
  const _$trainDetailsResponseTearOff();

  _trainDetailsResponse call(
      {@JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "sessionStatus") int? sessionStatus}) {
    return _trainDetailsResponse(
      sessionNo: sessionNo,
      sessionStatus: sessionStatus,
    );
  }

  trainDetailsResponse fromJson(Map<String, Object?> json) {
    return trainDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $trainDetailsResponse = _$trainDetailsResponseTearOff();

/// @nodoc
mixin _$trainDetailsResponse {
  @JsonKey(name: "sessionNo")
  int? get sessionNo => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionStatus")
  int? get sessionStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $trainDetailsResponseCopyWith<trainDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $trainDetailsResponseCopyWith<$Res> {
  factory $trainDetailsResponseCopyWith(trainDetailsResponse value,
          $Res Function(trainDetailsResponse) then) =
      _$trainDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "sessionStatus") int? sessionStatus});
}

/// @nodoc
class _$trainDetailsResponseCopyWithImpl<$Res>
    implements $trainDetailsResponseCopyWith<$Res> {
  _$trainDetailsResponseCopyWithImpl(this._value, this._then);

  final trainDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(trainDetailsResponse) _then;

  @override
  $Res call({
    Object? sessionNo = freezed,
    Object? sessionStatus = freezed,
  }) {
    return _then(_value.copyWith(
      sessionNo: sessionNo == freezed
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$trainDetailsResponseCopyWith<$Res>
    implements $trainDetailsResponseCopyWith<$Res> {
  factory _$trainDetailsResponseCopyWith(_trainDetailsResponse value,
          $Res Function(_trainDetailsResponse) then) =
      __$trainDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "sessionStatus") int? sessionStatus});
}

/// @nodoc
class __$trainDetailsResponseCopyWithImpl<$Res>
    extends _$trainDetailsResponseCopyWithImpl<$Res>
    implements _$trainDetailsResponseCopyWith<$Res> {
  __$trainDetailsResponseCopyWithImpl(
      _trainDetailsResponse _value, $Res Function(_trainDetailsResponse) _then)
      : super(_value, (v) => _then(v as _trainDetailsResponse));

  @override
  _trainDetailsResponse get _value => super._value as _trainDetailsResponse;

  @override
  $Res call({
    Object? sessionNo = freezed,
    Object? sessionStatus = freezed,
  }) {
    return _then(_trainDetailsResponse(
      sessionNo: sessionNo == freezed
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_trainDetailsResponse extends _trainDetailsResponse {
  _$_trainDetailsResponse(
      {@JsonKey(name: "sessionNo") this.sessionNo,
      @JsonKey(name: "sessionStatus") this.sessionStatus})
      : super._();

  factory _$_trainDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_trainDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "sessionNo")
  final int? sessionNo;
  @override
  @JsonKey(name: "sessionStatus")
  final int? sessionStatus;

  @override
  String toString() {
    return 'trainDetailsResponse(sessionNo: $sessionNo, sessionStatus: $sessionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _trainDetailsResponse &&
            const DeepCollectionEquality().equals(other.sessionNo, sessionNo) &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionNo),
      const DeepCollectionEquality().hash(sessionStatus));

  @JsonKey(ignore: true)
  @override
  _$trainDetailsResponseCopyWith<_trainDetailsResponse> get copyWith =>
      __$trainDetailsResponseCopyWithImpl<_trainDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_trainDetailsResponseToJson(this);
  }
}

abstract class _trainDetailsResponse extends trainDetailsResponse {
  factory _trainDetailsResponse(
          {@JsonKey(name: "sessionNo") int? sessionNo,
          @JsonKey(name: "sessionStatus") int? sessionStatus}) =
      _$_trainDetailsResponse;
  _trainDetailsResponse._() : super._();

  factory _trainDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_trainDetailsResponse.fromJson;

  @override
  @JsonKey(name: "sessionNo")
  int? get sessionNo;
  @override
  @JsonKey(name: "sessionStatus")
  int? get sessionStatus;
  @override
  @JsonKey(ignore: true)
  _$trainDetailsResponseCopyWith<_trainDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingPackageResponse _$TrainingPackageResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageResponse.fromJson(json);
}

/// @nodoc
class _$TrainingPackageResponseTearOff {
  const _$TrainingPackageResponseTearOff();

  _PackageResponse call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions}) {
    return _PackageResponse(
      subscriptionType: subscriptionType,
      amount: amount,
      numberOfSessions: numberOfSessions,
    );
  }

  TrainingPackageResponse fromJson(Map<String, Object?> json) {
    return TrainingPackageResponse.fromJson(json);
  }
}

/// @nodoc
const $TrainingPackageResponse = _$TrainingPackageResponseTearOff();

/// @nodoc
mixin _$TrainingPackageResponse {
  @JsonKey(name: "description")
  String? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency")
  int? get numberOfSessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingPackageResponseCopyWith<TrainingPackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingPackageResponseCopyWith<$Res> {
  factory $TrainingPackageResponseCopyWith(TrainingPackageResponse value,
          $Res Function(TrainingPackageResponse) then) =
      _$TrainingPackageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions});
}

/// @nodoc
class _$TrainingPackageResponseCopyWithImpl<$Res>
    implements $TrainingPackageResponseCopyWith<$Res> {
  _$TrainingPackageResponseCopyWithImpl(this._value, this._then);

  final TrainingPackageResponse _value;
  // ignore: unused_field
  final $Res Function(TrainingPackageResponse) _then;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
    Object? numberOfSessions = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionType: subscriptionType == freezed
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      numberOfSessions: numberOfSessions == freezed
          ? _value.numberOfSessions
          : numberOfSessions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PackageResponseCopyWith<$Res>
    implements $TrainingPackageResponseCopyWith<$Res> {
  factory _$PackageResponseCopyWith(
          _PackageResponse value, $Res Function(_PackageResponse) then) =
      __$PackageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions});
}

/// @nodoc
class __$PackageResponseCopyWithImpl<$Res>
    extends _$TrainingPackageResponseCopyWithImpl<$Res>
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
    Object? numberOfSessions = freezed,
  }) {
    return _then(_PackageResponse(
      subscriptionType: subscriptionType == freezed
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      numberOfSessions: numberOfSessions == freezed
          ? _value.numberOfSessions
          : numberOfSessions // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "frequency") this.numberOfSessions})
      : super._();

  factory _$_PackageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PackageResponseFromJson(json);

  @override
  @JsonKey(name: "description")
  final String? subscriptionType;
  @override
  @JsonKey(name: "amount")
  final double? amount;
  @override
  @JsonKey(name: "frequency")
  final int? numberOfSessions;

  @override
  String toString() {
    return 'TrainingPackageResponse(subscriptionType: $subscriptionType, amount: $amount, numberOfSessions: $numberOfSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageResponse &&
            const DeepCollectionEquality()
                .equals(other.subscriptionType, subscriptionType) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.numberOfSessions, numberOfSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subscriptionType),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(numberOfSessions));

  @JsonKey(ignore: true)
  @override
  _$PackageResponseCopyWith<_PackageResponse> get copyWith =>
      __$PackageResponseCopyWithImpl<_PackageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageResponseToJson(this);
  }
}

abstract class _PackageResponse extends TrainingPackageResponse {
  factory _PackageResponse(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions}) = _$_PackageResponse;
  _PackageResponse._() : super._();

  factory _PackageResponse.fromJson(Map<String, dynamic> json) =
      _$_PackageResponse.fromJson;

  @override
  @JsonKey(name: "description")
  String? get subscriptionType;
  @override
  @JsonKey(name: "amount")
  double? get amount;
  @override
  @JsonKey(name: "frequency")
  int? get numberOfSessions;
  @override
  @JsonKey(ignore: true)
  _$PackageResponseCopyWith<_PackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
