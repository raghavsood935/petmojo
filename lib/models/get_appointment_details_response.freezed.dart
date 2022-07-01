// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_appointment_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAppointmentDetailsResponse _$GetAppointmentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAppointmentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetAppointmentDetailsResponseTearOff {
  const _$GetAppointmentDetailsResponseTearOff();

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
          UserDetailsResponse? user,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "bookingDetails")
          GetBookingDetailsResponse? bookingDetails}) {
    return _GetAppointmentDetailsResponse(
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceStatus: serviceStatus,
      hasTestimony: hasTestimony,
      serviceType: serviceType,
      appointmentId: appointmentId,
      user: user,
      partner: partner,
      bookingDetails: bookingDetails,
    );
  }

  GetAppointmentDetailsResponse fromJson(Map<String, Object?> json) {
    return GetAppointmentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAppointmentDetailsResponse = _$GetAppointmentDetailsResponseTearOff();

/// @nodoc
mixin _$GetAppointmentDetailsResponse {
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
  UserDetailsResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get partner => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingDetails")
  GetBookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAppointmentDetailsResponseCopyWith<GetAppointmentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAppointmentDetailsResponseCopyWith<$Res> {
  factory $GetAppointmentDetailsResponseCopyWith(
          GetAppointmentDetailsResponse value,
          $Res Function(GetAppointmentDetailsResponse) then) =
      _$GetAppointmentDetailsResponseCopyWithImpl<$Res>;
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
          UserDetailsResponse? user,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "bookingDetails")
          GetBookingDetailsResponse? bookingDetails});

  $UserDetailsResponseCopyWith<$Res>? get user;
  $UserDetailsResponseCopyWith<$Res>? get partner;
  $GetBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$GetAppointmentDetailsResponseCopyWithImpl<$Res>
    implements $GetAppointmentDetailsResponseCopyWith<$Res> {
  _$GetAppointmentDetailsResponseCopyWithImpl(this._value, this._then);

  final GetAppointmentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetAppointmentDetailsResponse) _then;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? hasTestimony = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? partner = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as GetBookingDetailsResponse?,
    ));
  }

  @override
  $UserDetailsResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDetailsResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
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
  $GetBookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $GetBookingDetailsResponseCopyWith<$Res>(_value.bookingDetails!,
        (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$GetAppointmentDetailsResponseCopyWith<$Res>
    implements $GetAppointmentDetailsResponseCopyWith<$Res> {
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
          UserDetailsResponse? user,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? partner,
      @JsonKey(name: "bookingDetails")
          GetBookingDetailsResponse? bookingDetails});

  @override
  $UserDetailsResponseCopyWith<$Res>? get user;
  @override
  $UserDetailsResponseCopyWith<$Res>? get partner;
  @override
  $GetBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$GetAppointmentDetailsResponseCopyWithImpl<$Res>
    extends _$GetAppointmentDetailsResponseCopyWithImpl<$Res>
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
    Object? user = freezed,
    Object? partner = freezed,
    Object? bookingDetails = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      partner: partner == freezed
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as GetBookingDetailsResponse?,
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
      @JsonKey(name: "User") this.user,
      @JsonKey(name: "ServiceProvider") this.partner,
      @JsonKey(name: "bookingDetails") this.bookingDetails})
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
  final UserDetailsResponse? user;
  @override
  @JsonKey(name: "ServiceProvider")
  final UserDetailsResponse? partner;
  @override
  @JsonKey(name: "bookingDetails")
  final GetBookingDetailsResponse? bookingDetails;

  @override
  String toString() {
    return 'GetAppointmentDetailsResponse(petDetails: $petDetails, bookingStatus: $bookingStatus, serviceStatus: $serviceStatus, hasTestimony: $hasTestimony, serviceType: $serviceType, appointmentId: $appointmentId, user: $user, partner: $partner, bookingDetails: $bookingDetails)';
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
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.partner, partner) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails));
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
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(partner),
      const DeepCollectionEquality().hash(bookingDetails));

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
    extends GetAppointmentDetailsResponse {
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
              UserDetailsResponse? user,
          @JsonKey(name: "ServiceProvider")
              UserDetailsResponse? partner,
          @JsonKey(name: "bookingDetails")
              GetBookingDetailsResponse? bookingDetails}) =
      _$_GetAppointmentDetailsResponse;
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
  UserDetailsResponse? get user;
  @override
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get partner;
  @override
  @JsonKey(name: "bookingDetails")
  GetBookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(ignore: true)
  _$GetAppointmentDetailsResponseCopyWith<_GetAppointmentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetBookingDetailsResponse _$GetBookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetBookingDetailsResponseTearOff {
  const _$GetBookingDetailsResponseTearOff();

  _GetBookingDetailsResponse call(
      {@JsonKey(name: "petBehaviour") PetBehaviourResponse? petBehaviour,
      @JsonKey(name: "petRunningLocation") LocationResponse? petRunningLocation,
      @JsonKey(name: "paymentDetails") PaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "package") DogRunningPackageResponse? package,
      @JsonKey(name: "numberOfPets") int? numberOfPets,
      @JsonKey(name: "petDetails") List<PetSizeResponse>? petDetails,
      @JsonKey(name: "specialInstructions") String? specialInstructions,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "run1") String? run1Time,
      @JsonKey(name: "run2") String? run2Time,
      @JsonKey(name: "startDate") String? startDate,
      @JsonKey(name: "dayOff") List<DayOffResponse>? daysOff,
      @JsonKey(name: "runDetails") List<runDetailsResponse>? runDetails}) {
    return _GetBookingDetailsResponse(
      petBehaviour: petBehaviour,
      petRunningLocation: petRunningLocation,
      paymentDetails: paymentDetails,
      package: package,
      numberOfPets: numberOfPets,
      petDetails: petDetails,
      specialInstructions: specialInstructions,
      phone: phone,
      run1Time: run1Time,
      run2Time: run2Time,
      startDate: startDate,
      daysOff: daysOff,
      runDetails: runDetails,
    );
  }

  GetBookingDetailsResponse fromJson(Map<String, Object?> json) {
    return GetBookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetBookingDetailsResponse = _$GetBookingDetailsResponseTearOff();

/// @nodoc
mixin _$GetBookingDetailsResponse {
  @JsonKey(name: "petBehaviour")
  PetBehaviourResponse? get petBehaviour => throw _privateConstructorUsedError;
  @JsonKey(name: "petRunningLocation")
  LocationResponse? get petRunningLocation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "paymentDetails")
  PaymentDetailsResponse? get paymentDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "package")
  DogRunningPackageResponse? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets => throw _privateConstructorUsedError;
  @JsonKey(name: "petDetails")
  List<PetSizeResponse>? get petDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "specialInstructions")
  String? get specialInstructions => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "run1")
  String? get run1Time => throw _privateConstructorUsedError;
  @JsonKey(name: "run2")
  String? get run2Time => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "dayOff")
  List<DayOffResponse>? get daysOff => throw _privateConstructorUsedError;
  @JsonKey(name: "runDetails")
  List<runDetailsResponse>? get runDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBookingDetailsResponseCopyWith<GetBookingDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBookingDetailsResponseCopyWith<$Res> {
  factory $GetBookingDetailsResponseCopyWith(GetBookingDetailsResponse value,
          $Res Function(GetBookingDetailsResponse) then) =
      _$GetBookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petBehaviour") PetBehaviourResponse? petBehaviour,
      @JsonKey(name: "petRunningLocation") LocationResponse? petRunningLocation,
      @JsonKey(name: "paymentDetails") PaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "package") DogRunningPackageResponse? package,
      @JsonKey(name: "numberOfPets") int? numberOfPets,
      @JsonKey(name: "petDetails") List<PetSizeResponse>? petDetails,
      @JsonKey(name: "specialInstructions") String? specialInstructions,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "run1") String? run1Time,
      @JsonKey(name: "run2") String? run2Time,
      @JsonKey(name: "startDate") String? startDate,
      @JsonKey(name: "dayOff") List<DayOffResponse>? daysOff,
      @JsonKey(name: "runDetails") List<runDetailsResponse>? runDetails});

  $PetBehaviourResponseCopyWith<$Res>? get petBehaviour;
  $LocationResponseCopyWith<$Res>? get petRunningLocation;
  $PaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
  $DogRunningPackageResponseCopyWith<$Res>? get package;
}

/// @nodoc
class _$GetBookingDetailsResponseCopyWithImpl<$Res>
    implements $GetBookingDetailsResponseCopyWith<$Res> {
  _$GetBookingDetailsResponseCopyWithImpl(this._value, this._then);

  final GetBookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetBookingDetailsResponse) _then;

  @override
  $Res call({
    Object? petBehaviour = freezed,
    Object? petRunningLocation = freezed,
    Object? paymentDetails = freezed,
    Object? package = freezed,
    Object? numberOfPets = freezed,
    Object? petDetails = freezed,
    Object? specialInstructions = freezed,
    Object? phone = freezed,
    Object? run1Time = freezed,
    Object? run2Time = freezed,
    Object? startDate = freezed,
    Object? daysOff = freezed,
    Object? runDetails = freezed,
  }) {
    return _then(_value.copyWith(
      petBehaviour: petBehaviour == freezed
          ? _value.petBehaviour
          : petBehaviour // ignore: cast_nullable_to_non_nullable
              as PetBehaviourResponse?,
      petRunningLocation: petRunningLocation == freezed
          ? _value.petRunningLocation
          : petRunningLocation // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsResponse?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogRunningPackageResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      petDetails: petDetails == freezed
          ? _value.petDetails
          : petDetails // ignore: cast_nullable_to_non_nullable
              as List<PetSizeResponse>?,
      specialInstructions: specialInstructions == freezed
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      daysOff: daysOff == freezed
          ? _value.daysOff
          : daysOff // ignore: cast_nullable_to_non_nullable
              as List<DayOffResponse>?,
      runDetails: runDetails == freezed
          ? _value.runDetails
          : runDetails // ignore: cast_nullable_to_non_nullable
              as List<runDetailsResponse>?,
    ));
  }

  @override
  $PetBehaviourResponseCopyWith<$Res>? get petBehaviour {
    if (_value.petBehaviour == null) {
      return null;
    }

    return $PetBehaviourResponseCopyWith<$Res>(_value.petBehaviour!, (value) {
      return _then(_value.copyWith(petBehaviour: value));
    });
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
  $PaymentDetailsResponseCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $PaymentDetailsResponseCopyWith<$Res>(_value.paymentDetails!,
        (value) {
      return _then(_value.copyWith(paymentDetails: value));
    });
  }

  @override
  $DogRunningPackageResponseCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $DogRunningPackageResponseCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc
abstract class _$GetBookingDetailsResponseCopyWith<$Res>
    implements $GetBookingDetailsResponseCopyWith<$Res> {
  factory _$GetBookingDetailsResponseCopyWith(_GetBookingDetailsResponse value,
          $Res Function(_GetBookingDetailsResponse) then) =
      __$GetBookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petBehaviour") PetBehaviourResponse? petBehaviour,
      @JsonKey(name: "petRunningLocation") LocationResponse? petRunningLocation,
      @JsonKey(name: "paymentDetails") PaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "package") DogRunningPackageResponse? package,
      @JsonKey(name: "numberOfPets") int? numberOfPets,
      @JsonKey(name: "petDetails") List<PetSizeResponse>? petDetails,
      @JsonKey(name: "specialInstructions") String? specialInstructions,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "run1") String? run1Time,
      @JsonKey(name: "run2") String? run2Time,
      @JsonKey(name: "startDate") String? startDate,
      @JsonKey(name: "dayOff") List<DayOffResponse>? daysOff,
      @JsonKey(name: "runDetails") List<runDetailsResponse>? runDetails});

  @override
  $PetBehaviourResponseCopyWith<$Res>? get petBehaviour;
  @override
  $LocationResponseCopyWith<$Res>? get petRunningLocation;
  @override
  $PaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
  @override
  $DogRunningPackageResponseCopyWith<$Res>? get package;
}

/// @nodoc
class __$GetBookingDetailsResponseCopyWithImpl<$Res>
    extends _$GetBookingDetailsResponseCopyWithImpl<$Res>
    implements _$GetBookingDetailsResponseCopyWith<$Res> {
  __$GetBookingDetailsResponseCopyWithImpl(_GetBookingDetailsResponse _value,
      $Res Function(_GetBookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetBookingDetailsResponse));

  @override
  _GetBookingDetailsResponse get _value =>
      super._value as _GetBookingDetailsResponse;

  @override
  $Res call({
    Object? petBehaviour = freezed,
    Object? petRunningLocation = freezed,
    Object? paymentDetails = freezed,
    Object? package = freezed,
    Object? numberOfPets = freezed,
    Object? petDetails = freezed,
    Object? specialInstructions = freezed,
    Object? phone = freezed,
    Object? run1Time = freezed,
    Object? run2Time = freezed,
    Object? startDate = freezed,
    Object? daysOff = freezed,
    Object? runDetails = freezed,
  }) {
    return _then(_GetBookingDetailsResponse(
      petBehaviour: petBehaviour == freezed
          ? _value.petBehaviour
          : petBehaviour // ignore: cast_nullable_to_non_nullable
              as PetBehaviourResponse?,
      petRunningLocation: petRunningLocation == freezed
          ? _value.petRunningLocation
          : petRunningLocation // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailsResponse?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogRunningPackageResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      petDetails: petDetails == freezed
          ? _value.petDetails
          : petDetails // ignore: cast_nullable_to_non_nullable
              as List<PetSizeResponse>?,
      specialInstructions: specialInstructions == freezed
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      daysOff: daysOff == freezed
          ? _value.daysOff
          : daysOff // ignore: cast_nullable_to_non_nullable
              as List<DayOffResponse>?,
      runDetails: runDetails == freezed
          ? _value.runDetails
          : runDetails // ignore: cast_nullable_to_non_nullable
              as List<runDetailsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBookingDetailsResponse extends _GetBookingDetailsResponse {
  _$_GetBookingDetailsResponse(
      {@JsonKey(name: "petBehaviour") this.petBehaviour,
      @JsonKey(name: "petRunningLocation") this.petRunningLocation,
      @JsonKey(name: "paymentDetails") this.paymentDetails,
      @JsonKey(name: "package") this.package,
      @JsonKey(name: "numberOfPets") this.numberOfPets,
      @JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "specialInstructions") this.specialInstructions,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "run1") this.run1Time,
      @JsonKey(name: "run2") this.run2Time,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "dayOff") this.daysOff,
      @JsonKey(name: "runDetails") this.runDetails})
      : super._();

  factory _$_GetBookingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetBookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "petBehaviour")
  final PetBehaviourResponse? petBehaviour;
  @override
  @JsonKey(name: "petRunningLocation")
  final LocationResponse? petRunningLocation;
  @override
  @JsonKey(name: "paymentDetails")
  final PaymentDetailsResponse? paymentDetails;
  @override
  @JsonKey(name: "package")
  final DogRunningPackageResponse? package;
  @override
  @JsonKey(name: "numberOfPets")
  final int? numberOfPets;
  @override
  @JsonKey(name: "petDetails")
  final List<PetSizeResponse>? petDetails;
  @override
  @JsonKey(name: "specialInstructions")
  final String? specialInstructions;
  @override
  @JsonKey(name: "phone")
  final String? phone;
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
  @JsonKey(name: "dayOff")
  final List<DayOffResponse>? daysOff;
  @override
  @JsonKey(name: "runDetails")
  final List<runDetailsResponse>? runDetails;

  @override
  String toString() {
    return 'GetBookingDetailsResponse(petBehaviour: $petBehaviour, petRunningLocation: $petRunningLocation, paymentDetails: $paymentDetails, package: $package, numberOfPets: $numberOfPets, petDetails: $petDetails, specialInstructions: $specialInstructions, phone: $phone, run1Time: $run1Time, run2Time: $run2Time, startDate: $startDate, daysOff: $daysOff, runDetails: $runDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBookingDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.petBehaviour, petBehaviour) &&
            const DeepCollectionEquality()
                .equals(other.petRunningLocation, petRunningLocation) &&
            const DeepCollectionEquality()
                .equals(other.paymentDetails, paymentDetails) &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPets, numberOfPets) &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            const DeepCollectionEquality()
                .equals(other.specialInstructions, specialInstructions) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.run1Time, run1Time) &&
            const DeepCollectionEquality().equals(other.run2Time, run2Time) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.daysOff, daysOff) &&
            const DeepCollectionEquality()
                .equals(other.runDetails, runDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petBehaviour),
      const DeepCollectionEquality().hash(petRunningLocation),
      const DeepCollectionEquality().hash(paymentDetails),
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(numberOfPets),
      const DeepCollectionEquality().hash(petDetails),
      const DeepCollectionEquality().hash(specialInstructions),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(run1Time),
      const DeepCollectionEquality().hash(run2Time),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(daysOff),
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

abstract class _GetBookingDetailsResponse extends GetBookingDetailsResponse {
  factory _GetBookingDetailsResponse(
      {@JsonKey(name: "petBehaviour")
          PetBehaviourResponse? petBehaviour,
      @JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "paymentDetails")
          PaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "package")
          DogRunningPackageResponse? package,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "petDetails")
          List<PetSizeResponse>? petDetails,
      @JsonKey(name: "specialInstructions")
          String? specialInstructions,
      @JsonKey(name: "phone")
          String? phone,
      @JsonKey(name: "run1")
          String? run1Time,
      @JsonKey(name: "run2")
          String? run2Time,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "dayOff")
          List<DayOffResponse>? daysOff,
      @JsonKey(name: "runDetails")
          List<runDetailsResponse>? runDetails}) = _$_GetBookingDetailsResponse;
  _GetBookingDetailsResponse._() : super._();

  factory _GetBookingDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetBookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "petBehaviour")
  PetBehaviourResponse? get petBehaviour;
  @override
  @JsonKey(name: "petRunningLocation")
  LocationResponse? get petRunningLocation;
  @override
  @JsonKey(name: "paymentDetails")
  PaymentDetailsResponse? get paymentDetails;
  @override
  @JsonKey(name: "package")
  DogRunningPackageResponse? get package;
  @override
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets;
  @override
  @JsonKey(name: "petDetails")
  List<PetSizeResponse>? get petDetails;
  @override
  @JsonKey(name: "specialInstructions")
  String? get specialInstructions;
  @override
  @JsonKey(name: "phone")
  String? get phone;
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
  @JsonKey(name: "dayOff")
  List<DayOffResponse>? get daysOff;
  @override
  @JsonKey(name: "runDetails")
  List<runDetailsResponse>? get runDetails;
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

DayOffResponse _$DayOffResponseFromJson(Map<String, dynamic> json) {
  return _DayOffResponse.fromJson(json);
}

/// @nodoc
class _$DayOffResponseTearOff {
  const _$DayOffResponseTearOff();

  _DayOffResponse call({@JsonKey(name: "off") String? off}) {
    return _DayOffResponse(
      off: off,
    );
  }

  DayOffResponse fromJson(Map<String, Object?> json) {
    return DayOffResponse.fromJson(json);
  }
}

/// @nodoc
const $DayOffResponse = _$DayOffResponseTearOff();

/// @nodoc
mixin _$DayOffResponse {
  @JsonKey(name: "off")
  String? get off => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayOffResponseCopyWith<DayOffResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayOffResponseCopyWith<$Res> {
  factory $DayOffResponseCopyWith(
          DayOffResponse value, $Res Function(DayOffResponse) then) =
      _$DayOffResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "off") String? off});
}

/// @nodoc
class _$DayOffResponseCopyWithImpl<$Res>
    implements $DayOffResponseCopyWith<$Res> {
  _$DayOffResponseCopyWithImpl(this._value, this._then);

  final DayOffResponse _value;
  // ignore: unused_field
  final $Res Function(DayOffResponse) _then;

  @override
  $Res call({
    Object? off = freezed,
  }) {
    return _then(_value.copyWith(
      off: off == freezed
          ? _value.off
          : off // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DayOffResponseCopyWith<$Res>
    implements $DayOffResponseCopyWith<$Res> {
  factory _$DayOffResponseCopyWith(
          _DayOffResponse value, $Res Function(_DayOffResponse) then) =
      __$DayOffResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "off") String? off});
}

/// @nodoc
class __$DayOffResponseCopyWithImpl<$Res>
    extends _$DayOffResponseCopyWithImpl<$Res>
    implements _$DayOffResponseCopyWith<$Res> {
  __$DayOffResponseCopyWithImpl(
      _DayOffResponse _value, $Res Function(_DayOffResponse) _then)
      : super(_value, (v) => _then(v as _DayOffResponse));

  @override
  _DayOffResponse get _value => super._value as _DayOffResponse;

  @override
  $Res call({
    Object? off = freezed,
  }) {
    return _then(_DayOffResponse(
      off: off == freezed
          ? _value.off
          : off // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayOffResponse extends _DayOffResponse {
  _$_DayOffResponse({@JsonKey(name: "off") this.off}) : super._();

  factory _$_DayOffResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DayOffResponseFromJson(json);

  @override
  @JsonKey(name: "off")
  final String? off;

  @override
  String toString() {
    return 'DayOffResponse(off: $off)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayOffResponse &&
            const DeepCollectionEquality().equals(other.off, off));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(off));

  @JsonKey(ignore: true)
  @override
  _$DayOffResponseCopyWith<_DayOffResponse> get copyWith =>
      __$DayOffResponseCopyWithImpl<_DayOffResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayOffResponseToJson(this);
  }
}

abstract class _DayOffResponse extends DayOffResponse {
  factory _DayOffResponse({@JsonKey(name: "off") String? off}) =
      _$_DayOffResponse;
  _DayOffResponse._() : super._();

  factory _DayOffResponse.fromJson(Map<String, dynamic> json) =
      _$_DayOffResponse.fromJson;

  @override
  @JsonKey(name: "off")
  String? get off;
  @override
  @JsonKey(ignore: true)
  _$DayOffResponseCopyWith<_DayOffResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

runDetailsResponse _$runDetailsResponseFromJson(Map<String, dynamic> json) {
  return _runDetailsResponse.fromJson(json);
}

/// @nodoc
class _$runDetailsResponseTearOff {
  const _$runDetailsResponseTearOff();

  _runDetailsResponse call(
      {@JsonKey(name: "run2Status") int? run2Status,
      @JsonKey(name: "run1Status") int? run1Status,
      @JsonKey(name: "runDate") String? runDate}) {
    return _runDetailsResponse(
      run2Status: run2Status,
      run1Status: run1Status,
      runDate: runDate,
    );
  }

  runDetailsResponse fromJson(Map<String, Object?> json) {
    return runDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $runDetailsResponse = _$runDetailsResponseTearOff();

/// @nodoc
mixin _$runDetailsResponse {
  @JsonKey(name: "run2Status")
  int? get run2Status => throw _privateConstructorUsedError;
  @JsonKey(name: "run1Status")
  int? get run1Status => throw _privateConstructorUsedError;
  @JsonKey(name: "runDate")
  String? get runDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $runDetailsResponseCopyWith<runDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $runDetailsResponseCopyWith<$Res> {
  factory $runDetailsResponseCopyWith(
          runDetailsResponse value, $Res Function(runDetailsResponse) then) =
      _$runDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "run2Status") int? run2Status,
      @JsonKey(name: "run1Status") int? run1Status,
      @JsonKey(name: "runDate") String? runDate});
}

/// @nodoc
class _$runDetailsResponseCopyWithImpl<$Res>
    implements $runDetailsResponseCopyWith<$Res> {
  _$runDetailsResponseCopyWithImpl(this._value, this._then);

  final runDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(runDetailsResponse) _then;

  @override
  $Res call({
    Object? run2Status = freezed,
    Object? run1Status = freezed,
    Object? runDate = freezed,
  }) {
    return _then(_value.copyWith(
      run2Status: run2Status == freezed
          ? _value.run2Status
          : run2Status // ignore: cast_nullable_to_non_nullable
              as int?,
      run1Status: run1Status == freezed
          ? _value.run1Status
          : run1Status // ignore: cast_nullable_to_non_nullable
              as int?,
      runDate: runDate == freezed
          ? _value.runDate
          : runDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$runDetailsResponseCopyWith<$Res>
    implements $runDetailsResponseCopyWith<$Res> {
  factory _$runDetailsResponseCopyWith(
          _runDetailsResponse value, $Res Function(_runDetailsResponse) then) =
      __$runDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "run2Status") int? run2Status,
      @JsonKey(name: "run1Status") int? run1Status,
      @JsonKey(name: "runDate") String? runDate});
}

/// @nodoc
class __$runDetailsResponseCopyWithImpl<$Res>
    extends _$runDetailsResponseCopyWithImpl<$Res>
    implements _$runDetailsResponseCopyWith<$Res> {
  __$runDetailsResponseCopyWithImpl(
      _runDetailsResponse _value, $Res Function(_runDetailsResponse) _then)
      : super(_value, (v) => _then(v as _runDetailsResponse));

  @override
  _runDetailsResponse get _value => super._value as _runDetailsResponse;

  @override
  $Res call({
    Object? run2Status = freezed,
    Object? run1Status = freezed,
    Object? runDate = freezed,
  }) {
    return _then(_runDetailsResponse(
      run2Status: run2Status == freezed
          ? _value.run2Status
          : run2Status // ignore: cast_nullable_to_non_nullable
              as int?,
      run1Status: run1Status == freezed
          ? _value.run1Status
          : run1Status // ignore: cast_nullable_to_non_nullable
              as int?,
      runDate: runDate == freezed
          ? _value.runDate
          : runDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_runDetailsResponse extends _runDetailsResponse {
  _$_runDetailsResponse(
      {@JsonKey(name: "run2Status") this.run2Status,
      @JsonKey(name: "run1Status") this.run1Status,
      @JsonKey(name: "runDate") this.runDate})
      : super._();

  factory _$_runDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_runDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "run2Status")
  final int? run2Status;
  @override
  @JsonKey(name: "run1Status")
  final int? run1Status;
  @override
  @JsonKey(name: "runDate")
  final String? runDate;

  @override
  String toString() {
    return 'runDetailsResponse(run2Status: $run2Status, run1Status: $run1Status, runDate: $runDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _runDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.run2Status, run2Status) &&
            const DeepCollectionEquality()
                .equals(other.run1Status, run1Status) &&
            const DeepCollectionEquality().equals(other.runDate, runDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(run2Status),
      const DeepCollectionEquality().hash(run1Status),
      const DeepCollectionEquality().hash(runDate));

  @JsonKey(ignore: true)
  @override
  _$runDetailsResponseCopyWith<_runDetailsResponse> get copyWith =>
      __$runDetailsResponseCopyWithImpl<_runDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_runDetailsResponseToJson(this);
  }
}

abstract class _runDetailsResponse extends runDetailsResponse {
  factory _runDetailsResponse(
      {@JsonKey(name: "run2Status") int? run2Status,
      @JsonKey(name: "run1Status") int? run1Status,
      @JsonKey(name: "runDate") String? runDate}) = _$_runDetailsResponse;
  _runDetailsResponse._() : super._();

  factory _runDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_runDetailsResponse.fromJson;

  @override
  @JsonKey(name: "run2Status")
  int? get run2Status;
  @override
  @JsonKey(name: "run1Status")
  int? get run1Status;
  @override
  @JsonKey(name: "runDate")
  String? get runDate;
  @override
  @JsonKey(ignore: true)
  _$runDetailsResponseCopyWith<_runDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PetSizeResponse _$PetSizeResponseFromJson(Map<String, dynamic> json) {
  return _PetSizeResponse.fromJson(json);
}

/// @nodoc
class _$PetSizeResponseTearOff {
  const _$PetSizeResponseTearOff();

  _PetSizeResponse call({@JsonKey(name: "size") String? size}) {
    return _PetSizeResponse(
      size: size,
    );
  }

  PetSizeResponse fromJson(Map<String, Object?> json) {
    return PetSizeResponse.fromJson(json);
  }
}

/// @nodoc
const $PetSizeResponse = _$PetSizeResponseTearOff();

/// @nodoc
mixin _$PetSizeResponse {
  @JsonKey(name: "size")
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetSizeResponseCopyWith<PetSizeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetSizeResponseCopyWith<$Res> {
  factory $PetSizeResponseCopyWith(
          PetSizeResponse value, $Res Function(PetSizeResponse) then) =
      _$PetSizeResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "size") String? size});
}

/// @nodoc
class _$PetSizeResponseCopyWithImpl<$Res>
    implements $PetSizeResponseCopyWith<$Res> {
  _$PetSizeResponseCopyWithImpl(this._value, this._then);

  final PetSizeResponse _value;
  // ignore: unused_field
  final $Res Function(PetSizeResponse) _then;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PetSizeResponseCopyWith<$Res>
    implements $PetSizeResponseCopyWith<$Res> {
  factory _$PetSizeResponseCopyWith(
          _PetSizeResponse value, $Res Function(_PetSizeResponse) then) =
      __$PetSizeResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "size") String? size});
}

/// @nodoc
class __$PetSizeResponseCopyWithImpl<$Res>
    extends _$PetSizeResponseCopyWithImpl<$Res>
    implements _$PetSizeResponseCopyWith<$Res> {
  __$PetSizeResponseCopyWithImpl(
      _PetSizeResponse _value, $Res Function(_PetSizeResponse) _then)
      : super(_value, (v) => _then(v as _PetSizeResponse));

  @override
  _PetSizeResponse get _value => super._value as _PetSizeResponse;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_PetSizeResponse(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetSizeResponse extends _PetSizeResponse {
  _$_PetSizeResponse({@JsonKey(name: "size") this.size}) : super._();

  factory _$_PetSizeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetSizeResponseFromJson(json);

  @override
  @JsonKey(name: "size")
  final String? size;

  @override
  String toString() {
    return 'PetSizeResponse(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetSizeResponse &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$PetSizeResponseCopyWith<_PetSizeResponse> get copyWith =>
      __$PetSizeResponseCopyWithImpl<_PetSizeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetSizeResponseToJson(this);
  }
}

abstract class _PetSizeResponse extends PetSizeResponse {
  factory _PetSizeResponse({@JsonKey(name: "size") String? size}) =
      _$_PetSizeResponse;
  _PetSizeResponse._() : super._();

  factory _PetSizeResponse.fromJson(Map<String, dynamic> json) =
      _$_PetSizeResponse.fromJson;

  @override
  @JsonKey(name: "size")
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$PetSizeResponseCopyWith<_PetSizeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PetBehaviourResponse _$PetBehaviourResponseFromJson(Map<String, dynamic> json) {
  return _PetBehaviourResponse.fromJson(json);
}

/// @nodoc
class _$PetBehaviourResponseTearOff {
  const _$PetBehaviourResponseTearOff();

  _PetBehaviourResponse call(
      {@JsonKey(name: "pullsOnTheLeash")
          bool? petBehaviourOne,
      @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
          bool? petBehaviourTwo,
      @JsonKey(name: "jumpsUpOnPeopleAndThings")
          bool? petBehaviourThree,
      @JsonKey(name: "chaseSmallerAnimals")
          bool? petBehaviourFour,
      @JsonKey(name: "protectiveOfHome")
          bool? petBehaviourFive}) {
    return _PetBehaviourResponse(
      petBehaviourOne: petBehaviourOne,
      petBehaviourTwo: petBehaviourTwo,
      petBehaviourThree: petBehaviourThree,
      petBehaviourFour: petBehaviourFour,
      petBehaviourFive: petBehaviourFive,
    );
  }

  PetBehaviourResponse fromJson(Map<String, Object?> json) {
    return PetBehaviourResponse.fromJson(json);
  }
}

/// @nodoc
const $PetBehaviourResponse = _$PetBehaviourResponseTearOff();

/// @nodoc
mixin _$PetBehaviourResponse {
  @JsonKey(name: "pullsOnTheLeash")
  bool? get petBehaviourOne => throw _privateConstructorUsedError;
  @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
  bool? get petBehaviourTwo => throw _privateConstructorUsedError;
  @JsonKey(name: "jumpsUpOnPeopleAndThings")
  bool? get petBehaviourThree => throw _privateConstructorUsedError;
  @JsonKey(name: "chaseSmallerAnimals")
  bool? get petBehaviourFour => throw _privateConstructorUsedError;
  @JsonKey(name: "protectiveOfHome")
  bool? get petBehaviourFive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetBehaviourResponseCopyWith<PetBehaviourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetBehaviourResponseCopyWith<$Res> {
  factory $PetBehaviourResponseCopyWith(PetBehaviourResponse value,
          $Res Function(PetBehaviourResponse) then) =
      _$PetBehaviourResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "pullsOnTheLeash")
          bool? petBehaviourOne,
      @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
          bool? petBehaviourTwo,
      @JsonKey(name: "jumpsUpOnPeopleAndThings")
          bool? petBehaviourThree,
      @JsonKey(name: "chaseSmallerAnimals")
          bool? petBehaviourFour,
      @JsonKey(name: "protectiveOfHome")
          bool? petBehaviourFive});
}

/// @nodoc
class _$PetBehaviourResponseCopyWithImpl<$Res>
    implements $PetBehaviourResponseCopyWith<$Res> {
  _$PetBehaviourResponseCopyWithImpl(this._value, this._then);

  final PetBehaviourResponse _value;
  // ignore: unused_field
  final $Res Function(PetBehaviourResponse) _then;

  @override
  $Res call({
    Object? petBehaviourOne = freezed,
    Object? petBehaviourTwo = freezed,
    Object? petBehaviourThree = freezed,
    Object? petBehaviourFour = freezed,
    Object? petBehaviourFive = freezed,
  }) {
    return _then(_value.copyWith(
      petBehaviourOne: petBehaviourOne == freezed
          ? _value.petBehaviourOne
          : petBehaviourOne // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourTwo: petBehaviourTwo == freezed
          ? _value.petBehaviourTwo
          : petBehaviourTwo // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourThree: petBehaviourThree == freezed
          ? _value.petBehaviourThree
          : petBehaviourThree // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourFour: petBehaviourFour == freezed
          ? _value.petBehaviourFour
          : petBehaviourFour // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourFive: petBehaviourFive == freezed
          ? _value.petBehaviourFive
          : petBehaviourFive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PetBehaviourResponseCopyWith<$Res>
    implements $PetBehaviourResponseCopyWith<$Res> {
  factory _$PetBehaviourResponseCopyWith(_PetBehaviourResponse value,
          $Res Function(_PetBehaviourResponse) then) =
      __$PetBehaviourResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "pullsOnTheLeash")
          bool? petBehaviourOne,
      @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
          bool? petBehaviourTwo,
      @JsonKey(name: "jumpsUpOnPeopleAndThings")
          bool? petBehaviourThree,
      @JsonKey(name: "chaseSmallerAnimals")
          bool? petBehaviourFour,
      @JsonKey(name: "protectiveOfHome")
          bool? petBehaviourFive});
}

/// @nodoc
class __$PetBehaviourResponseCopyWithImpl<$Res>
    extends _$PetBehaviourResponseCopyWithImpl<$Res>
    implements _$PetBehaviourResponseCopyWith<$Res> {
  __$PetBehaviourResponseCopyWithImpl(
      _PetBehaviourResponse _value, $Res Function(_PetBehaviourResponse) _then)
      : super(_value, (v) => _then(v as _PetBehaviourResponse));

  @override
  _PetBehaviourResponse get _value => super._value as _PetBehaviourResponse;

  @override
  $Res call({
    Object? petBehaviourOne = freezed,
    Object? petBehaviourTwo = freezed,
    Object? petBehaviourThree = freezed,
    Object? petBehaviourFour = freezed,
    Object? petBehaviourFive = freezed,
  }) {
    return _then(_PetBehaviourResponse(
      petBehaviourOne: petBehaviourOne == freezed
          ? _value.petBehaviourOne
          : petBehaviourOne // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourTwo: petBehaviourTwo == freezed
          ? _value.petBehaviourTwo
          : petBehaviourTwo // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourThree: petBehaviourThree == freezed
          ? _value.petBehaviourThree
          : petBehaviourThree // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourFour: petBehaviourFour == freezed
          ? _value.petBehaviourFour
          : petBehaviourFour // ignore: cast_nullable_to_non_nullable
              as bool?,
      petBehaviourFive: petBehaviourFive == freezed
          ? _value.petBehaviourFive
          : petBehaviourFive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetBehaviourResponse extends _PetBehaviourResponse {
  _$_PetBehaviourResponse(
      {@JsonKey(name: "pullsOnTheLeash")
          this.petBehaviourOne,
      @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
          this.petBehaviourTwo,
      @JsonKey(name: "jumpsUpOnPeopleAndThings")
          this.petBehaviourThree,
      @JsonKey(name: "chaseSmallerAnimals")
          this.petBehaviourFour,
      @JsonKey(name: "protectiveOfHome")
          this.petBehaviourFive})
      : super._();

  factory _$_PetBehaviourResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetBehaviourResponseFromJson(json);

  @override
  @JsonKey(name: "pullsOnTheLeash")
  final bool? petBehaviourOne;
  @override
  @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
  final bool? petBehaviourTwo;
  @override
  @JsonKey(name: "jumpsUpOnPeopleAndThings")
  final bool? petBehaviourThree;
  @override
  @JsonKey(name: "chaseSmallerAnimals")
  final bool? petBehaviourFour;
  @override
  @JsonKey(name: "protectiveOfHome")
  final bool? petBehaviourFive;

  @override
  String toString() {
    return 'PetBehaviourResponse(petBehaviourOne: $petBehaviourOne, petBehaviourTwo: $petBehaviourTwo, petBehaviourThree: $petBehaviourThree, petBehaviourFour: $petBehaviourFour, petBehaviourFive: $petBehaviourFive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetBehaviourResponse &&
            const DeepCollectionEquality()
                .equals(other.petBehaviourOne, petBehaviourOne) &&
            const DeepCollectionEquality()
                .equals(other.petBehaviourTwo, petBehaviourTwo) &&
            const DeepCollectionEquality()
                .equals(other.petBehaviourThree, petBehaviourThree) &&
            const DeepCollectionEquality()
                .equals(other.petBehaviourFour, petBehaviourFour) &&
            const DeepCollectionEquality()
                .equals(other.petBehaviourFive, petBehaviourFive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petBehaviourOne),
      const DeepCollectionEquality().hash(petBehaviourTwo),
      const DeepCollectionEquality().hash(petBehaviourThree),
      const DeepCollectionEquality().hash(petBehaviourFour),
      const DeepCollectionEquality().hash(petBehaviourFive));

  @JsonKey(ignore: true)
  @override
  _$PetBehaviourResponseCopyWith<_PetBehaviourResponse> get copyWith =>
      __$PetBehaviourResponseCopyWithImpl<_PetBehaviourResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetBehaviourResponseToJson(this);
  }
}

abstract class _PetBehaviourResponse extends PetBehaviourResponse {
  factory _PetBehaviourResponse(
      {@JsonKey(name: "pullsOnTheLeash")
          bool? petBehaviourOne,
      @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
          bool? petBehaviourTwo,
      @JsonKey(name: "jumpsUpOnPeopleAndThings")
          bool? petBehaviourThree,
      @JsonKey(name: "chaseSmallerAnimals")
          bool? petBehaviourFour,
      @JsonKey(name: "protectiveOfHome")
          bool? petBehaviourFive}) = _$_PetBehaviourResponse;
  _PetBehaviourResponse._() : super._();

  factory _PetBehaviourResponse.fromJson(Map<String, dynamic> json) =
      _$_PetBehaviourResponse.fromJson;

  @override
  @JsonKey(name: "pullsOnTheLeash")
  bool? get petBehaviourOne;
  @override
  @JsonKey(name: "likeInteractingWithOtherDogsOrPeople")
  bool? get petBehaviourTwo;
  @override
  @JsonKey(name: "jumpsUpOnPeopleAndThings")
  bool? get petBehaviourThree;
  @override
  @JsonKey(name: "chaseSmallerAnimals")
  bool? get petBehaviourFour;
  @override
  @JsonKey(name: "protectiveOfHome")
  bool? get petBehaviourFive;
  @override
  @JsonKey(ignore: true)
  _$PetBehaviourResponseCopyWith<_PetBehaviourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDetailsResponse _$PaymentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PaymentDetailsResponseTearOff {
  const _$PaymentDetailsResponseTearOff();

  _PaymentDetailsResponse call({@JsonKey(name: "amount") int? amount}) {
    return _PaymentDetailsResponse(
      amount: amount,
    );
  }

  PaymentDetailsResponse fromJson(Map<String, Object?> json) {
    return PaymentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PaymentDetailsResponse = _$PaymentDetailsResponseTearOff();

/// @nodoc
mixin _$PaymentDetailsResponse {
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsResponseCopyWith<PaymentDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsResponseCopyWith<$Res> {
  factory $PaymentDetailsResponseCopyWith(PaymentDetailsResponse value,
          $Res Function(PaymentDetailsResponse) then) =
      _$PaymentDetailsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "amount") int? amount});
}

/// @nodoc
class _$PaymentDetailsResponseCopyWithImpl<$Res>
    implements $PaymentDetailsResponseCopyWith<$Res> {
  _$PaymentDetailsResponseCopyWithImpl(this._value, this._then);

  final PaymentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PaymentDetailsResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentDetailsResponseCopyWith<$Res>
    implements $PaymentDetailsResponseCopyWith<$Res> {
  factory _$PaymentDetailsResponseCopyWith(_PaymentDetailsResponse value,
          $Res Function(_PaymentDetailsResponse) then) =
      __$PaymentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "amount") int? amount});
}

/// @nodoc
class __$PaymentDetailsResponseCopyWithImpl<$Res>
    extends _$PaymentDetailsResponseCopyWithImpl<$Res>
    implements _$PaymentDetailsResponseCopyWith<$Res> {
  __$PaymentDetailsResponseCopyWithImpl(_PaymentDetailsResponse _value,
      $Res Function(_PaymentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PaymentDetailsResponse));

  @override
  _PaymentDetailsResponse get _value => super._value as _PaymentDetailsResponse;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_PaymentDetailsResponse(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDetailsResponse extends _PaymentDetailsResponse {
  _$_PaymentDetailsResponse({@JsonKey(name: "amount") this.amount}) : super._();

  factory _$_PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "amount")
  final int? amount;

  @override
  String toString() {
    return 'PaymentDetailsResponse(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentDetailsResponse &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$PaymentDetailsResponseCopyWith<_PaymentDetailsResponse> get copyWith =>
      __$PaymentDetailsResponseCopyWithImpl<_PaymentDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDetailsResponseToJson(this);
  }
}

abstract class _PaymentDetailsResponse extends PaymentDetailsResponse {
  factory _PaymentDetailsResponse({@JsonKey(name: "amount") int? amount}) =
      _$_PaymentDetailsResponse;
  _PaymentDetailsResponse._() : super._();

  factory _PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$PaymentDetailsResponseCopyWith<_PaymentDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
