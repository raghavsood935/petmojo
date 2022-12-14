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
          List<DogRunningAppointmentListResponse>? dogRunningAppointmentsList,
      @JsonKey(name: "Traininglist")
          List<DogTrainingAppointmentListResponse>? dogTrainingAppointmentsList,
      @JsonKey(name: "Groominglist")
          List<DogGroomingAppointmentListResponse>? dogGroomingAppointmentsList,
      @JsonKey(name: "Boardinglist")
          List<DogBoardingAppointmentListResponse>?
              dogBoardingAppointmentsList}) {
    return _MyAppointmentsResponse(
      dogRunningAppointmentsList: dogRunningAppointmentsList,
      dogTrainingAppointmentsList: dogTrainingAppointmentsList,
      dogGroomingAppointmentsList: dogGroomingAppointmentsList,
      dogBoardingAppointmentsList: dogBoardingAppointmentsList,
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
  List<DogRunningAppointmentListResponse>? get dogRunningAppointmentsList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Traininglist")
  List<DogTrainingAppointmentListResponse>? get dogTrainingAppointmentsList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Groominglist")
  List<DogGroomingAppointmentListResponse>? get dogGroomingAppointmentsList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Boardinglist")
  List<DogBoardingAppointmentListResponse>? get dogBoardingAppointmentsList =>
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
          List<DogRunningAppointmentListResponse>? dogRunningAppointmentsList,
      @JsonKey(name: "Traininglist")
          List<DogTrainingAppointmentListResponse>? dogTrainingAppointmentsList,
      @JsonKey(name: "Groominglist")
          List<DogGroomingAppointmentListResponse>? dogGroomingAppointmentsList,
      @JsonKey(name: "Boardinglist")
          List<DogBoardingAppointmentListResponse>?
              dogBoardingAppointmentsList});
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
    Object? dogRunningAppointmentsList = freezed,
    Object? dogTrainingAppointmentsList = freezed,
    Object? dogGroomingAppointmentsList = freezed,
    Object? dogBoardingAppointmentsList = freezed,
  }) {
    return _then(_value.copyWith(
      dogRunningAppointmentsList: dogRunningAppointmentsList == freezed
          ? _value.dogRunningAppointmentsList
          : dogRunningAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogRunningAppointmentListResponse>?,
      dogTrainingAppointmentsList: dogTrainingAppointmentsList == freezed
          ? _value.dogTrainingAppointmentsList
          : dogTrainingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogTrainingAppointmentListResponse>?,
      dogGroomingAppointmentsList: dogGroomingAppointmentsList == freezed
          ? _value.dogGroomingAppointmentsList
          : dogGroomingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogGroomingAppointmentListResponse>?,
      dogBoardingAppointmentsList: dogBoardingAppointmentsList == freezed
          ? _value.dogBoardingAppointmentsList
          : dogBoardingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogBoardingAppointmentListResponse>?,
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
          List<DogRunningAppointmentListResponse>? dogRunningAppointmentsList,
      @JsonKey(name: "Traininglist")
          List<DogTrainingAppointmentListResponse>? dogTrainingAppointmentsList,
      @JsonKey(name: "Groominglist")
          List<DogGroomingAppointmentListResponse>? dogGroomingAppointmentsList,
      @JsonKey(name: "Boardinglist")
          List<DogBoardingAppointmentListResponse>?
              dogBoardingAppointmentsList});
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
    Object? dogRunningAppointmentsList = freezed,
    Object? dogTrainingAppointmentsList = freezed,
    Object? dogGroomingAppointmentsList = freezed,
    Object? dogBoardingAppointmentsList = freezed,
  }) {
    return _then(_MyAppointmentsResponse(
      dogRunningAppointmentsList: dogRunningAppointmentsList == freezed
          ? _value.dogRunningAppointmentsList
          : dogRunningAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogRunningAppointmentListResponse>?,
      dogTrainingAppointmentsList: dogTrainingAppointmentsList == freezed
          ? _value.dogTrainingAppointmentsList
          : dogTrainingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogTrainingAppointmentListResponse>?,
      dogGroomingAppointmentsList: dogGroomingAppointmentsList == freezed
          ? _value.dogGroomingAppointmentsList
          : dogGroomingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogGroomingAppointmentListResponse>?,
      dogBoardingAppointmentsList: dogBoardingAppointmentsList == freezed
          ? _value.dogBoardingAppointmentsList
          : dogBoardingAppointmentsList // ignore: cast_nullable_to_non_nullable
              as List<DogBoardingAppointmentListResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyAppointmentsResponse extends _MyAppointmentsResponse {
  _$_MyAppointmentsResponse(
      {@JsonKey(name: "serviceList") this.dogRunningAppointmentsList,
      @JsonKey(name: "Traininglist") this.dogTrainingAppointmentsList,
      @JsonKey(name: "Groominglist") this.dogGroomingAppointmentsList,
      @JsonKey(name: "Boardinglist") this.dogBoardingAppointmentsList})
      : super._();

  factory _$_MyAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MyAppointmentsResponseFromJson(json);

  @override
  @JsonKey(name: "serviceList")
  final List<DogRunningAppointmentListResponse>? dogRunningAppointmentsList;
  @override
  @JsonKey(name: "Traininglist")
  final List<DogTrainingAppointmentListResponse>? dogTrainingAppointmentsList;
  @override
  @JsonKey(name: "Groominglist")
  final List<DogGroomingAppointmentListResponse>? dogGroomingAppointmentsList;
  @override
  @JsonKey(name: "Boardinglist")
  final List<DogBoardingAppointmentListResponse>? dogBoardingAppointmentsList;

  @override
  String toString() {
    return 'MyAppointmentsResponse(dogRunningAppointmentsList: $dogRunningAppointmentsList, dogTrainingAppointmentsList: $dogTrainingAppointmentsList, dogGroomingAppointmentsList: $dogGroomingAppointmentsList, dogBoardingAppointmentsList: $dogBoardingAppointmentsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyAppointmentsResponse &&
            const DeepCollectionEquality().equals(
                other.dogRunningAppointmentsList, dogRunningAppointmentsList) &&
            const DeepCollectionEquality().equals(
                other.dogTrainingAppointmentsList,
                dogTrainingAppointmentsList) &&
            const DeepCollectionEquality().equals(
                other.dogGroomingAppointmentsList,
                dogGroomingAppointmentsList) &&
            const DeepCollectionEquality().equals(
                other.dogBoardingAppointmentsList,
                dogBoardingAppointmentsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dogRunningAppointmentsList),
      const DeepCollectionEquality().hash(dogTrainingAppointmentsList),
      const DeepCollectionEquality().hash(dogGroomingAppointmentsList),
      const DeepCollectionEquality().hash(dogBoardingAppointmentsList));

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
          List<DogRunningAppointmentListResponse>? dogRunningAppointmentsList,
      @JsonKey(name: "Traininglist")
          List<DogTrainingAppointmentListResponse>? dogTrainingAppointmentsList,
      @JsonKey(name: "Groominglist")
          List<DogGroomingAppointmentListResponse>? dogGroomingAppointmentsList,
      @JsonKey(name: "Boardinglist")
          List<DogBoardingAppointmentListResponse>?
              dogBoardingAppointmentsList}) = _$_MyAppointmentsResponse;
  _MyAppointmentsResponse._() : super._();

  factory _MyAppointmentsResponse.fromJson(Map<String, dynamic> json) =
      _$_MyAppointmentsResponse.fromJson;

  @override
  @JsonKey(name: "serviceList")
  List<DogRunningAppointmentListResponse>? get dogRunningAppointmentsList;
  @override
  @JsonKey(name: "Traininglist")
  List<DogTrainingAppointmentListResponse>? get dogTrainingAppointmentsList;
  @override
  @JsonKey(name: "Groominglist")
  List<DogGroomingAppointmentListResponse>? get dogGroomingAppointmentsList;
  @override
  @JsonKey(name: "Boardinglist")
  List<DogBoardingAppointmentListResponse>? get dogBoardingAppointmentsList;
  @override
  @JsonKey(ignore: true)
  _$MyAppointmentsResponseCopyWith<_MyAppointmentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DogTrainingAppointmentListResponse _$DogTrainingAppointmentListResponseFromJson(
    Map<String, dynamic> json) {
  return _DogTrainingAppointmentListResponse.fromJson(json);
}

/// @nodoc
class _$DogTrainingAppointmentListResponseTearOff {
  const _$DogTrainingAppointmentListResponseTearOff();

  _DogTrainingAppointmentListResponse call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "DogTrainingbookingDetails")
          DogTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "sessionsLeft")
          int? sessionsLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "sessionsCompleted")
          int? sessionsCompleted}) {
    return _DogTrainingAppointmentListResponse(
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceType: serviceType,
      appointmentId: appointmentId,
      user: user,
      bookingDetails: bookingDetails,
      sessionsLeft: sessionsLeft,
      isReorderDone: isReorderDone,
      createdAt: createdAt,
      sessionsCompleted: sessionsCompleted,
    );
  }

  DogTrainingAppointmentListResponse fromJson(Map<String, Object?> json) {
    return DogTrainingAppointmentListResponse.fromJson(json);
  }
}

/// @nodoc
const $DogTrainingAppointmentListResponse =
    _$DogTrainingAppointmentListResponseTearOff();

/// @nodoc
mixin _$DogTrainingAppointmentListResponse {
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "DogTrainingbookingDetails")
  DogTrainingBookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sessionsLeft")
  int? get sessionsLeft => throw _privateConstructorUsedError;
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionsCompleted")
  int? get sessionsCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogTrainingAppointmentListResponseCopyWith<
          DogTrainingAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogTrainingAppointmentListResponseCopyWith<$Res> {
  factory $DogTrainingAppointmentListResponseCopyWith(
          DogTrainingAppointmentListResponse value,
          $Res Function(DogTrainingAppointmentListResponse) then) =
      _$DogTrainingAppointmentListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "DogTrainingbookingDetails")
          DogTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "sessionsLeft")
          int? sessionsLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "sessionsCompleted")
          int? sessionsCompleted});

  $UserDetailsResponseCopyWith<$Res>? get user;
  $DogTrainingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$DogTrainingAppointmentListResponseCopyWithImpl<$Res>
    implements $DogTrainingAppointmentListResponseCopyWith<$Res> {
  _$DogTrainingAppointmentListResponseCopyWithImpl(this._value, this._then);

  final DogTrainingAppointmentListResponse _value;
  // ignore: unused_field
  final $Res Function(DogTrainingAppointmentListResponse) _then;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? bookingDetails = freezed,
    Object? sessionsLeft = freezed,
    Object? isReorderDone = freezed,
    Object? createdAt = freezed,
    Object? sessionsCompleted = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogTrainingBookingDetailsResponse?,
      sessionsLeft: sessionsLeft == freezed
          ? _value.sessionsLeft
          : sessionsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionsCompleted: sessionsCompleted == freezed
          ? _value.sessionsCompleted
          : sessionsCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $DogTrainingBookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $DogTrainingBookingDetailsResponseCopyWith<$Res>(
        _value.bookingDetails!, (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$DogTrainingAppointmentListResponseCopyWith<$Res>
    implements $DogTrainingAppointmentListResponseCopyWith<$Res> {
  factory _$DogTrainingAppointmentListResponseCopyWith(
          _DogTrainingAppointmentListResponse value,
          $Res Function(_DogTrainingAppointmentListResponse) then) =
      __$DogTrainingAppointmentListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "DogTrainingbookingDetails")
          DogTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "sessionsLeft")
          int? sessionsLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "sessionsCompleted")
          int? sessionsCompleted});

  @override
  $UserDetailsResponseCopyWith<$Res>? get user;
  @override
  $DogTrainingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$DogTrainingAppointmentListResponseCopyWithImpl<$Res>
    extends _$DogTrainingAppointmentListResponseCopyWithImpl<$Res>
    implements _$DogTrainingAppointmentListResponseCopyWith<$Res> {
  __$DogTrainingAppointmentListResponseCopyWithImpl(
      _DogTrainingAppointmentListResponse _value,
      $Res Function(_DogTrainingAppointmentListResponse) _then)
      : super(_value, (v) => _then(v as _DogTrainingAppointmentListResponse));

  @override
  _DogTrainingAppointmentListResponse get _value =>
      super._value as _DogTrainingAppointmentListResponse;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? bookingDetails = freezed,
    Object? sessionsLeft = freezed,
    Object? isReorderDone = freezed,
    Object? createdAt = freezed,
    Object? sessionsCompleted = freezed,
  }) {
    return _then(_DogTrainingAppointmentListResponse(
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogTrainingBookingDetailsResponse?,
      sessionsLeft: sessionsLeft == freezed
          ? _value.sessionsLeft
          : sessionsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionsCompleted: sessionsCompleted == freezed
          ? _value.sessionsCompleted
          : sessionsCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogTrainingAppointmentListResponse
    extends _DogTrainingAppointmentListResponse {
  _$_DogTrainingAppointmentListResponse(
      {@JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "bookingStatus") this.bookingStatus,
      @JsonKey(name: "serviceType") this.serviceType,
      @JsonKey(name: "_id") this.appointmentId,
      @JsonKey(name: "ServiceProvider") this.user,
      @JsonKey(name: "DogTrainingbookingDetails") this.bookingDetails,
      @JsonKey(name: "sessionsLeft") this.sessionsLeft,
      @JsonKey(name: "isReorderDone") this.isReorderDone,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "sessionsCompleted") this.sessionsCompleted})
      : super._();

  factory _$_DogTrainingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogTrainingAppointmentListResponseFromJson(json);

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
  @JsonKey(name: "ServiceProvider")
  final UserDetailsResponse? user;
  @override
  @JsonKey(name: "DogTrainingbookingDetails")
  final DogTrainingBookingDetailsResponse? bookingDetails;
  @override
  @JsonKey(name: "sessionsLeft")
  final int? sessionsLeft;
  @override
  @JsonKey(name: "isReorderDone")
  final bool? isReorderDone;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "sessionsCompleted")
  final int? sessionsCompleted;

  @override
  String toString() {
    return 'DogTrainingAppointmentListResponse(petDetails: $petDetails, bookingStatus: $bookingStatus, serviceType: $serviceType, appointmentId: $appointmentId, user: $user, bookingDetails: $bookingDetails, sessionsLeft: $sessionsLeft, isReorderDone: $isReorderDone, createdAt: $createdAt, sessionsCompleted: $sessionsCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogTrainingAppointmentListResponse &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            const DeepCollectionEquality()
                .equals(other.bookingStatus, bookingStatus) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails) &&
            const DeepCollectionEquality()
                .equals(other.sessionsLeft, sessionsLeft) &&
            const DeepCollectionEquality()
                .equals(other.isReorderDone, isReorderDone) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.sessionsCompleted, sessionsCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petDetails),
      const DeepCollectionEquality().hash(bookingStatus),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(bookingDetails),
      const DeepCollectionEquality().hash(sessionsLeft),
      const DeepCollectionEquality().hash(isReorderDone),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(sessionsCompleted));

  @JsonKey(ignore: true)
  @override
  _$DogTrainingAppointmentListResponseCopyWith<
          _DogTrainingAppointmentListResponse>
      get copyWith => __$DogTrainingAppointmentListResponseCopyWithImpl<
          _DogTrainingAppointmentListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogTrainingAppointmentListResponseToJson(this);
  }
}

abstract class _DogTrainingAppointmentListResponse
    extends DogTrainingAppointmentListResponse {
  factory _DogTrainingAppointmentListResponse(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "DogTrainingbookingDetails")
          DogTrainingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "sessionsLeft")
          int? sessionsLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "sessionsCompleted")
          int? sessionsCompleted}) = _$_DogTrainingAppointmentListResponse;
  _DogTrainingAppointmentListResponse._() : super._();

  factory _DogTrainingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogTrainingAppointmentListResponse.fromJson;

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
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user;
  @override
  @JsonKey(name: "DogTrainingbookingDetails")
  DogTrainingBookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(name: "sessionsLeft")
  int? get sessionsLeft;
  @override
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "sessionsCompleted")
  int? get sessionsCompleted;
  @override
  @JsonKey(ignore: true)
  _$DogTrainingAppointmentListResponseCopyWith<
          _DogTrainingAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogBoardingAppointmentListResponse _$DogBoardingAppointmentListResponseFromJson(
    Map<String, dynamic> json) {
  return _DogBoardingAppointmentListResponse.fromJson(json);
}

/// @nodoc
class _$DogBoardingAppointmentListResponseTearOff {
  const _$DogBoardingAppointmentListResponseTearOff();

  _DogBoardingAppointmentListResponse call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "PetBoardingbookingDetails")
          DogBoardingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt}) {
    return _DogBoardingAppointmentListResponse(
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceStatus: serviceStatus,
      isRated: isRated,
      serviceType: serviceType,
      appointmentId: appointmentId,
      user: user,
      bookingDetails: bookingDetails,
      isReorderDone: isReorderDone,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DogBoardingAppointmentListResponse fromJson(Map<String, Object?> json) {
    return DogBoardingAppointmentListResponse.fromJson(json);
  }
}

/// @nodoc
const $DogBoardingAppointmentListResponse =
    _$DogBoardingAppointmentListResponseTearOff();

/// @nodoc
mixin _$DogBoardingAppointmentListResponse {
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceStatus")
  int? get serviceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "isRated")
  bool? get isRated => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "PetBoardingbookingDetails")
  DogBoardingBookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogBoardingAppointmentListResponseCopyWith<
          DogBoardingAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogBoardingAppointmentListResponseCopyWith<$Res> {
  factory $DogBoardingAppointmentListResponseCopyWith(
          DogBoardingAppointmentListResponse value,
          $Res Function(DogBoardingAppointmentListResponse) then) =
      _$DogBoardingAppointmentListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "PetBoardingbookingDetails")
          DogBoardingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt});

  $UserDetailsResponseCopyWith<$Res>? get user;
  $DogBoardingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$DogBoardingAppointmentListResponseCopyWithImpl<$Res>
    implements $DogBoardingAppointmentListResponseCopyWith<$Res> {
  _$DogBoardingAppointmentListResponseCopyWithImpl(this._value, this._then);

  final DogBoardingAppointmentListResponse _value;
  // ignore: unused_field
  final $Res Function(DogBoardingAppointmentListResponse) _then;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? isRated = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? bookingDetails = freezed,
    Object? isReorderDone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      isRated: isRated == freezed
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
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
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogBoardingBookingDetailsResponse?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $DogBoardingBookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $DogBoardingBookingDetailsResponseCopyWith<$Res>(
        _value.bookingDetails!, (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$DogBoardingAppointmentListResponseCopyWith<$Res>
    implements $DogBoardingAppointmentListResponseCopyWith<$Res> {
  factory _$DogBoardingAppointmentListResponseCopyWith(
          _DogBoardingAppointmentListResponse value,
          $Res Function(_DogBoardingAppointmentListResponse) then) =
      __$DogBoardingAppointmentListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "PetBoardingbookingDetails")
          DogBoardingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt});

  @override
  $UserDetailsResponseCopyWith<$Res>? get user;
  @override
  $DogBoardingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$DogBoardingAppointmentListResponseCopyWithImpl<$Res>
    extends _$DogBoardingAppointmentListResponseCopyWithImpl<$Res>
    implements _$DogBoardingAppointmentListResponseCopyWith<$Res> {
  __$DogBoardingAppointmentListResponseCopyWithImpl(
      _DogBoardingAppointmentListResponse _value,
      $Res Function(_DogBoardingAppointmentListResponse) _then)
      : super(_value, (v) => _then(v as _DogBoardingAppointmentListResponse));

  @override
  _DogBoardingAppointmentListResponse get _value =>
      super._value as _DogBoardingAppointmentListResponse;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? isRated = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? bookingDetails = freezed,
    Object? isReorderDone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DogBoardingAppointmentListResponse(
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
      isRated: isRated == freezed
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
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
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogBoardingBookingDetailsResponse?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogBoardingAppointmentListResponse
    extends _DogBoardingAppointmentListResponse {
  _$_DogBoardingAppointmentListResponse(
      {@JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "bookingStatus") this.bookingStatus,
      @JsonKey(name: "serviceStatus") this.serviceStatus,
      @JsonKey(name: "isRated") this.isRated,
      @JsonKey(name: "serviceType") this.serviceType,
      @JsonKey(name: "_id") this.appointmentId,
      @JsonKey(name: "ServiceProvider") this.user,
      @JsonKey(name: "PetBoardingbookingDetails") this.bookingDetails,
      @JsonKey(name: "isReorderDone") this.isReorderDone,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : super._();

  factory _$_DogBoardingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogBoardingAppointmentListResponseFromJson(json);

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
  @JsonKey(name: "isRated")
  final bool? isRated;
  @override
  @JsonKey(name: "serviceType")
  final int? serviceType;
  @override
  @JsonKey(name: "_id")
  final String? appointmentId;
  @override
  @JsonKey(name: "ServiceProvider")
  final UserDetailsResponse? user;
  @override
  @JsonKey(name: "PetBoardingbookingDetails")
  final DogBoardingBookingDetailsResponse? bookingDetails;
  @override
  @JsonKey(name: "isReorderDone")
  final bool? isReorderDone;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String? updatedAt;

  @override
  String toString() {
    return 'DogBoardingAppointmentListResponse(petDetails: $petDetails, bookingStatus: $bookingStatus, serviceStatus: $serviceStatus, isRated: $isRated, serviceType: $serviceType, appointmentId: $appointmentId, user: $user, bookingDetails: $bookingDetails, isReorderDone: $isReorderDone, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogBoardingAppointmentListResponse &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            const DeepCollectionEquality()
                .equals(other.bookingStatus, bookingStatus) &&
            const DeepCollectionEquality()
                .equals(other.serviceStatus, serviceStatus) &&
            const DeepCollectionEquality().equals(other.isRated, isRated) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails) &&
            const DeepCollectionEquality()
                .equals(other.isReorderDone, isReorderDone) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petDetails),
      const DeepCollectionEquality().hash(bookingStatus),
      const DeepCollectionEquality().hash(serviceStatus),
      const DeepCollectionEquality().hash(isRated),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(bookingDetails),
      const DeepCollectionEquality().hash(isReorderDone),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$DogBoardingAppointmentListResponseCopyWith<
          _DogBoardingAppointmentListResponse>
      get copyWith => __$DogBoardingAppointmentListResponseCopyWithImpl<
          _DogBoardingAppointmentListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogBoardingAppointmentListResponseToJson(this);
  }
}

abstract class _DogBoardingAppointmentListResponse
    extends DogBoardingAppointmentListResponse {
  factory _DogBoardingAppointmentListResponse(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "PetBoardingbookingDetails")
          DogBoardingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt}) = _$_DogBoardingAppointmentListResponse;
  _DogBoardingAppointmentListResponse._() : super._();

  factory _DogBoardingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogBoardingAppointmentListResponse.fromJson;

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
  @JsonKey(name: "isRated")
  bool? get isRated;
  @override
  @JsonKey(name: "serviceType")
  int? get serviceType;
  @override
  @JsonKey(name: "_id")
  String? get appointmentId;
  @override
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user;
  @override
  @JsonKey(name: "PetBoardingbookingDetails")
  DogBoardingBookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DogBoardingAppointmentListResponseCopyWith<
          _DogBoardingAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogTrainingPaymentDetailsResponse _$DogTrainingPaymentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogTrainingPaymentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogTrainingPaymentDetailsResponseTearOff {
  const _$DogTrainingPaymentDetailsResponseTearOff();

  _DogTrainingPaymentDetailsResponse call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId}) {
    return _DogTrainingPaymentDetailsResponse(
      paymentStatus: paymentStatus,
      amount: amount,
      transactionId: transactionId,
    );
  }

  DogTrainingPaymentDetailsResponse fromJson(Map<String, Object?> json) {
    return DogTrainingPaymentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogTrainingPaymentDetailsResponse =
    _$DogTrainingPaymentDetailsResponseTearOff();

/// @nodoc
mixin _$DogTrainingPaymentDetailsResponse {
  @JsonKey(name: "status")
  int? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionId")
  String? get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogTrainingPaymentDetailsResponseCopyWith<DogTrainingPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogTrainingPaymentDetailsResponseCopyWith<$Res> {
  factory $DogTrainingPaymentDetailsResponseCopyWith(
          DogTrainingPaymentDetailsResponse value,
          $Res Function(DogTrainingPaymentDetailsResponse) then) =
      _$DogTrainingPaymentDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId});
}

/// @nodoc
class _$DogTrainingPaymentDetailsResponseCopyWithImpl<$Res>
    implements $DogTrainingPaymentDetailsResponseCopyWith<$Res> {
  _$DogTrainingPaymentDetailsResponseCopyWithImpl(this._value, this._then);

  final DogTrainingPaymentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogTrainingPaymentDetailsResponse) _then;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DogTrainingPaymentDetailsResponseCopyWith<$Res>
    implements $DogTrainingPaymentDetailsResponseCopyWith<$Res> {
  factory _$DogTrainingPaymentDetailsResponseCopyWith(
          _DogTrainingPaymentDetailsResponse value,
          $Res Function(_DogTrainingPaymentDetailsResponse) then) =
      __$DogTrainingPaymentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId});
}

/// @nodoc
class __$DogTrainingPaymentDetailsResponseCopyWithImpl<$Res>
    extends _$DogTrainingPaymentDetailsResponseCopyWithImpl<$Res>
    implements _$DogTrainingPaymentDetailsResponseCopyWith<$Res> {
  __$DogTrainingPaymentDetailsResponseCopyWithImpl(
      _DogTrainingPaymentDetailsResponse _value,
      $Res Function(_DogTrainingPaymentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogTrainingPaymentDetailsResponse));

  @override
  _DogTrainingPaymentDetailsResponse get _value =>
      super._value as _DogTrainingPaymentDetailsResponse;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_DogTrainingPaymentDetailsResponse(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogTrainingPaymentDetailsResponse
    extends _DogTrainingPaymentDetailsResponse {
  _$_DogTrainingPaymentDetailsResponse(
      {@JsonKey(name: "status") this.paymentStatus,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "transactionId") this.transactionId})
      : super._();

  factory _$_DogTrainingPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogTrainingPaymentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? paymentStatus;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "transactionId")
  final String? transactionId;

  @override
  String toString() {
    return 'DogTrainingPaymentDetailsResponse(paymentStatus: $paymentStatus, amount: $amount, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogTrainingPaymentDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentStatus),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  _$DogTrainingPaymentDetailsResponseCopyWith<
          _DogTrainingPaymentDetailsResponse>
      get copyWith => __$DogTrainingPaymentDetailsResponseCopyWithImpl<
          _DogTrainingPaymentDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogTrainingPaymentDetailsResponseToJson(this);
  }
}

abstract class _DogTrainingPaymentDetailsResponse
    extends DogTrainingPaymentDetailsResponse {
  factory _DogTrainingPaymentDetailsResponse(
          {@JsonKey(name: "status") int? paymentStatus,
          @JsonKey(name: "amount") int? amount,
          @JsonKey(name: "transactionId") String? transactionId}) =
      _$_DogTrainingPaymentDetailsResponse;
  _DogTrainingPaymentDetailsResponse._() : super._();

  factory _DogTrainingPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogTrainingPaymentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "status")
  int? get paymentStatus;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "transactionId")
  String? get transactionId;
  @override
  @JsonKey(ignore: true)
  _$DogTrainingPaymentDetailsResponseCopyWith<
          _DogTrainingPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogBoardingPaymentDetailsResponse _$DogBoardingPaymentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogBoardingPaymentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogBoardingPaymentDetailsResponseTearOff {
  const _$DogBoardingPaymentDetailsResponseTearOff();

  _DogBoardingPaymentDetailsResponse call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount}) {
    return _DogBoardingPaymentDetailsResponse(
      paymentStatus: paymentStatus,
      amount: amount,
    );
  }

  DogBoardingPaymentDetailsResponse fromJson(Map<String, Object?> json) {
    return DogBoardingPaymentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogBoardingPaymentDetailsResponse =
    _$DogBoardingPaymentDetailsResponseTearOff();

/// @nodoc
mixin _$DogBoardingPaymentDetailsResponse {
  @JsonKey(name: "status")
  int? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogBoardingPaymentDetailsResponseCopyWith<DogBoardingPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogBoardingPaymentDetailsResponseCopyWith<$Res> {
  factory $DogBoardingPaymentDetailsResponseCopyWith(
          DogBoardingPaymentDetailsResponse value,
          $Res Function(DogBoardingPaymentDetailsResponse) then) =
      _$DogBoardingPaymentDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount});
}

/// @nodoc
class _$DogBoardingPaymentDetailsResponseCopyWithImpl<$Res>
    implements $DogBoardingPaymentDetailsResponseCopyWith<$Res> {
  _$DogBoardingPaymentDetailsResponseCopyWithImpl(this._value, this._then);

  final DogBoardingPaymentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogBoardingPaymentDetailsResponse) _then;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DogBoardingPaymentDetailsResponseCopyWith<$Res>
    implements $DogBoardingPaymentDetailsResponseCopyWith<$Res> {
  factory _$DogBoardingPaymentDetailsResponseCopyWith(
          _DogBoardingPaymentDetailsResponse value,
          $Res Function(_DogBoardingPaymentDetailsResponse) then) =
      __$DogBoardingPaymentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount});
}

/// @nodoc
class __$DogBoardingPaymentDetailsResponseCopyWithImpl<$Res>
    extends _$DogBoardingPaymentDetailsResponseCopyWithImpl<$Res>
    implements _$DogBoardingPaymentDetailsResponseCopyWith<$Res> {
  __$DogBoardingPaymentDetailsResponseCopyWithImpl(
      _DogBoardingPaymentDetailsResponse _value,
      $Res Function(_DogBoardingPaymentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogBoardingPaymentDetailsResponse));

  @override
  _DogBoardingPaymentDetailsResponse get _value =>
      super._value as _DogBoardingPaymentDetailsResponse;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
  }) {
    return _then(_DogBoardingPaymentDetailsResponse(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogBoardingPaymentDetailsResponse
    extends _DogBoardingPaymentDetailsResponse {
  _$_DogBoardingPaymentDetailsResponse(
      {@JsonKey(name: "status") this.paymentStatus,
      @JsonKey(name: "amount") this.amount})
      : super._();

  factory _$_DogBoardingPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogBoardingPaymentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? paymentStatus;
  @override
  @JsonKey(name: "amount")
  final int? amount;

  @override
  String toString() {
    return 'DogBoardingPaymentDetailsResponse(paymentStatus: $paymentStatus, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogBoardingPaymentDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentStatus),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$DogBoardingPaymentDetailsResponseCopyWith<
          _DogBoardingPaymentDetailsResponse>
      get copyWith => __$DogBoardingPaymentDetailsResponseCopyWithImpl<
          _DogBoardingPaymentDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogBoardingPaymentDetailsResponseToJson(this);
  }
}

abstract class _DogBoardingPaymentDetailsResponse
    extends DogBoardingPaymentDetailsResponse {
  factory _DogBoardingPaymentDetailsResponse(
          {@JsonKey(name: "status") int? paymentStatus,
          @JsonKey(name: "amount") int? amount}) =
      _$_DogBoardingPaymentDetailsResponse;
  _DogBoardingPaymentDetailsResponse._() : super._();

  factory _DogBoardingPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogBoardingPaymentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "status")
  int? get paymentStatus;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$DogBoardingPaymentDetailsResponseCopyWith<
          _DogBoardingPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogGroomingAppointmentListResponse _$DogGroomingAppointmentListResponseFromJson(
    Map<String, dynamic> json) {
  return _DogGroomingAppointmentListResponse.fromJson(json);
}

/// @nodoc
class _$DogGroomingAppointmentListResponseTearOff {
  const _$DogGroomingAppointmentListResponseTearOff();

  _DogGroomingAppointmentListResponse call(
      {@JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "DogGroomingbookingDetails")
          DogGroomingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "amount")
          int? amount,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone}) {
    return _DogGroomingAppointmentListResponse(
      appointmentId: appointmentId,
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceStatus: serviceStatus,
      isRated: isRated,
      serviceType: serviceType,
      userId: userId,
      bookingDetails: bookingDetails,
      amount: amount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      v: v,
      user: user,
      isReorderDone: isReorderDone,
    );
  }

  DogGroomingAppointmentListResponse fromJson(Map<String, Object?> json) {
    return DogGroomingAppointmentListResponse.fromJson(json);
  }
}

/// @nodoc
const $DogGroomingAppointmentListResponse =
    _$DogGroomingAppointmentListResponseTearOff();

/// @nodoc
mixin _$DogGroomingAppointmentListResponse {
  @JsonKey(name: "_id")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceStatus")
  int? get serviceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "isRated")
  bool? get isRated => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "User")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "DogGroomingbookingDetails")
  DogGroomingBookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogGroomingAppointmentListResponseCopyWith<
          DogGroomingAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogGroomingAppointmentListResponseCopyWith<$Res> {
  factory $DogGroomingAppointmentListResponseCopyWith(
          DogGroomingAppointmentListResponse value,
          $Res Function(DogGroomingAppointmentListResponse) then) =
      _$DogGroomingAppointmentListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "DogGroomingbookingDetails")
          DogGroomingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "amount")
          int? amount,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone});

  $DogGroomingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
  $UserDetailsResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$DogGroomingAppointmentListResponseCopyWithImpl<$Res>
    implements $DogGroomingAppointmentListResponseCopyWith<$Res> {
  _$DogGroomingAppointmentListResponseCopyWithImpl(this._value, this._then);

  final DogGroomingAppointmentListResponse _value;
  // ignore: unused_field
  final $Res Function(DogGroomingAppointmentListResponse) _then;

  @override
  $Res call({
    Object? appointmentId = freezed,
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? isRated = freezed,
    Object? serviceType = freezed,
    Object? userId = freezed,
    Object? bookingDetails = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? user = freezed,
    Object? isReorderDone = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isRated: isRated == freezed
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogGroomingBookingDetailsResponse?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $DogGroomingBookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $DogGroomingBookingDetailsResponseCopyWith<$Res>(
        _value.bookingDetails!, (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
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
}

/// @nodoc
abstract class _$DogGroomingAppointmentListResponseCopyWith<$Res>
    implements $DogGroomingAppointmentListResponseCopyWith<$Res> {
  factory _$DogGroomingAppointmentListResponseCopyWith(
          _DogGroomingAppointmentListResponse value,
          $Res Function(_DogGroomingAppointmentListResponse) then) =
      __$DogGroomingAppointmentListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "DogGroomingbookingDetails")
          DogGroomingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "amount")
          int? amount,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone});

  @override
  $DogGroomingBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
  @override
  $UserDetailsResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$DogGroomingAppointmentListResponseCopyWithImpl<$Res>
    extends _$DogGroomingAppointmentListResponseCopyWithImpl<$Res>
    implements _$DogGroomingAppointmentListResponseCopyWith<$Res> {
  __$DogGroomingAppointmentListResponseCopyWithImpl(
      _DogGroomingAppointmentListResponse _value,
      $Res Function(_DogGroomingAppointmentListResponse) _then)
      : super(_value, (v) => _then(v as _DogGroomingAppointmentListResponse));

  @override
  _DogGroomingAppointmentListResponse get _value =>
      super._value as _DogGroomingAppointmentListResponse;

  @override
  $Res call({
    Object? appointmentId = freezed,
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceStatus = freezed,
    Object? isRated = freezed,
    Object? serviceType = freezed,
    Object? userId = freezed,
    Object? bookingDetails = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? user = freezed,
    Object? isReorderDone = freezed,
  }) {
    return _then(_DogGroomingAppointmentListResponse(
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isRated: isRated == freezed
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogGroomingBookingDetailsResponse?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogGroomingAppointmentListResponse
    extends _DogGroomingAppointmentListResponse {
  _$_DogGroomingAppointmentListResponse(
      {@JsonKey(name: "_id") this.appointmentId,
      @JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "bookingStatus") this.bookingStatus,
      @JsonKey(name: "serviceStatus") this.serviceStatus,
      @JsonKey(name: "isRated") this.isRated,
      @JsonKey(name: "serviceType") this.serviceType,
      @JsonKey(name: "User") this.userId,
      @JsonKey(name: "DogGroomingbookingDetails") this.bookingDetails,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "ServiceProvider") this.user,
      @JsonKey(name: "isReorderDone") this.isReorderDone})
      : super._();

  factory _$_DogGroomingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogGroomingAppointmentListResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? appointmentId;
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
  @JsonKey(name: "isRated")
  final bool? isRated;
  @override
  @JsonKey(name: "serviceType")
  final int? serviceType;
  @override
  @JsonKey(name: "User")
  final String? userId;
  @override
  @JsonKey(name: "DogGroomingbookingDetails")
  final DogGroomingBookingDetailsResponse? bookingDetails;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "ServiceProvider")
  final UserDetailsResponse? user;
  @override
  @JsonKey(name: "isReorderDone")
  final bool? isReorderDone;

  @override
  String toString() {
    return 'DogGroomingAppointmentListResponse(appointmentId: $appointmentId, petDetails: $petDetails, bookingStatus: $bookingStatus, serviceStatus: $serviceStatus, isRated: $isRated, serviceType: $serviceType, userId: $userId, bookingDetails: $bookingDetails, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, user: $user, isReorderDone: $isReorderDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogGroomingAppointmentListResponse &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            const DeepCollectionEquality()
                .equals(other.bookingStatus, bookingStatus) &&
            const DeepCollectionEquality()
                .equals(other.serviceStatus, serviceStatus) &&
            const DeepCollectionEquality().equals(other.isRated, isRated) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.v, v) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isReorderDone, isReorderDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(petDetails),
      const DeepCollectionEquality().hash(bookingStatus),
      const DeepCollectionEquality().hash(serviceStatus),
      const DeepCollectionEquality().hash(isRated),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(bookingDetails),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(v),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isReorderDone));

  @JsonKey(ignore: true)
  @override
  _$DogGroomingAppointmentListResponseCopyWith<
          _DogGroomingAppointmentListResponse>
      get copyWith => __$DogGroomingAppointmentListResponseCopyWithImpl<
          _DogGroomingAppointmentListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogGroomingAppointmentListResponseToJson(this);
  }
}

abstract class _DogGroomingAppointmentListResponse
    extends DogGroomingAppointmentListResponse {
  factory _DogGroomingAppointmentListResponse(
      {@JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceStatus")
          int? serviceStatus,
      @JsonKey(name: "isRated")
          bool? isRated,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "User")
          String? userId,
      @JsonKey(name: "DogGroomingbookingDetails")
          DogGroomingBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "amount")
          int? amount,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "updatedAt")
          String? updatedAt,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone}) = _$_DogGroomingAppointmentListResponse;
  _DogGroomingAppointmentListResponse._() : super._();

  factory _DogGroomingAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogGroomingAppointmentListResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get appointmentId;
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
  @JsonKey(name: "isRated")
  bool? get isRated;
  @override
  @JsonKey(name: "serviceType")
  int? get serviceType;
  @override
  @JsonKey(name: "User")
  String? get userId;
  @override
  @JsonKey(name: "DogGroomingbookingDetails")
  DogGroomingBookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user;
  @override
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone;
  @override
  @JsonKey(ignore: true)
  _$DogGroomingAppointmentListResponseCopyWith<
          _DogGroomingAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogRunningAppointmentListResponse _$DogRunningAppointmentListResponseFromJson(
    Map<String, dynamic> json) {
  return _DogRunningAppointmentListResponse.fromJson(json);
}

/// @nodoc
class _$DogRunningAppointmentListResponseTearOff {
  const _$DogRunningAppointmentListResponseTearOff();

  _DogRunningAppointmentListResponse call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "bookingDetails")
          DogRunningBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "daysLeft")
          int? daysLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "lastDate")
          String? lastDate}) {
    return _DogRunningAppointmentListResponse(
      petDetails: petDetails,
      bookingStatus: bookingStatus,
      serviceType: serviceType,
      appointmentId: appointmentId,
      user: user,
      bookingDetails: bookingDetails,
      daysLeft: daysLeft,
      isReorderDone: isReorderDone,
      createdAt: createdAt,
      lastDate: lastDate,
    );
  }

  DogRunningAppointmentListResponse fromJson(Map<String, Object?> json) {
    return DogRunningAppointmentListResponse.fromJson(json);
  }
}

/// @nodoc
const $DogRunningAppointmentListResponse =
    _$DogRunningAppointmentListResponseTearOff();

/// @nodoc
mixin _$DogRunningAppointmentListResponse {
  @JsonKey(name: "petDetails")
  List<PetDetailsResponse>? get petDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookingStatus")
  int? get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingDetails")
  DogRunningBookingDetailsResponse? get bookingDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "daysLeft")
  int? get daysLeft => throw _privateConstructorUsedError;
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "lastDate")
  String? get lastDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogRunningAppointmentListResponseCopyWith<DogRunningAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogRunningAppointmentListResponseCopyWith<$Res> {
  factory $DogRunningAppointmentListResponseCopyWith(
          DogRunningAppointmentListResponse value,
          $Res Function(DogRunningAppointmentListResponse) then) =
      _$DogRunningAppointmentListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "bookingDetails")
          DogRunningBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "daysLeft")
          int? daysLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "lastDate")
          String? lastDate});

  $UserDetailsResponseCopyWith<$Res>? get user;
  $DogRunningBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$DogRunningAppointmentListResponseCopyWithImpl<$Res>
    implements $DogRunningAppointmentListResponseCopyWith<$Res> {
  _$DogRunningAppointmentListResponseCopyWithImpl(this._value, this._then);

  final DogRunningAppointmentListResponse _value;
  // ignore: unused_field
  final $Res Function(DogRunningAppointmentListResponse) _then;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? bookingDetails = freezed,
    Object? daysLeft = freezed,
    Object? isReorderDone = freezed,
    Object? createdAt = freezed,
    Object? lastDate = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogRunningBookingDetailsResponse?,
      daysLeft: daysLeft == freezed
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDate: lastDate == freezed
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $DogRunningBookingDetailsResponseCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $DogRunningBookingDetailsResponseCopyWith<$Res>(
        _value.bookingDetails!, (value) {
      return _then(_value.copyWith(bookingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$DogRunningAppointmentListResponseCopyWith<$Res>
    implements $DogRunningAppointmentListResponseCopyWith<$Res> {
  factory _$DogRunningAppointmentListResponseCopyWith(
          _DogRunningAppointmentListResponse value,
          $Res Function(_DogRunningAppointmentListResponse) then) =
      __$DogRunningAppointmentListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "bookingDetails")
          DogRunningBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "daysLeft")
          int? daysLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "lastDate")
          String? lastDate});

  @override
  $UserDetailsResponseCopyWith<$Res>? get user;
  @override
  $DogRunningBookingDetailsResponseCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$DogRunningAppointmentListResponseCopyWithImpl<$Res>
    extends _$DogRunningAppointmentListResponseCopyWithImpl<$Res>
    implements _$DogRunningAppointmentListResponseCopyWith<$Res> {
  __$DogRunningAppointmentListResponseCopyWithImpl(
      _DogRunningAppointmentListResponse _value,
      $Res Function(_DogRunningAppointmentListResponse) _then)
      : super(_value, (v) => _then(v as _DogRunningAppointmentListResponse));

  @override
  _DogRunningAppointmentListResponse get _value =>
      super._value as _DogRunningAppointmentListResponse;

  @override
  $Res call({
    Object? petDetails = freezed,
    Object? bookingStatus = freezed,
    Object? serviceType = freezed,
    Object? appointmentId = freezed,
    Object? user = freezed,
    Object? bookingDetails = freezed,
    Object? daysLeft = freezed,
    Object? isReorderDone = freezed,
    Object? createdAt = freezed,
    Object? lastDate = freezed,
  }) {
    return _then(_DogRunningAppointmentListResponse(
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as DogRunningBookingDetailsResponse?,
      daysLeft: daysLeft == freezed
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastDate: lastDate == freezed
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogRunningAppointmentListResponse
    extends _DogRunningAppointmentListResponse {
  _$_DogRunningAppointmentListResponse(
      {@JsonKey(name: "petDetails") this.petDetails,
      @JsonKey(name: "bookingStatus") this.bookingStatus,
      @JsonKey(name: "serviceType") this.serviceType,
      @JsonKey(name: "_id") this.appointmentId,
      @JsonKey(name: "ServiceProvider") this.user,
      @JsonKey(name: "bookingDetails") this.bookingDetails,
      @JsonKey(name: "daysLeft") this.daysLeft,
      @JsonKey(name: "isReorderDone") this.isReorderDone,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "lastDate") this.lastDate})
      : super._();

  factory _$_DogRunningAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogRunningAppointmentListResponseFromJson(json);

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
  @JsonKey(name: "ServiceProvider")
  final UserDetailsResponse? user;
  @override
  @JsonKey(name: "bookingDetails")
  final DogRunningBookingDetailsResponse? bookingDetails;
  @override
  @JsonKey(name: "daysLeft")
  final int? daysLeft;
  @override
  @JsonKey(name: "isReorderDone")
  final bool? isReorderDone;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "lastDate")
  final String? lastDate;

  @override
  String toString() {
    return 'DogRunningAppointmentListResponse(petDetails: $petDetails, bookingStatus: $bookingStatus, serviceType: $serviceType, appointmentId: $appointmentId, user: $user, bookingDetails: $bookingDetails, daysLeft: $daysLeft, isReorderDone: $isReorderDone, createdAt: $createdAt, lastDate: $lastDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogRunningAppointmentListResponse &&
            const DeepCollectionEquality()
                .equals(other.petDetails, petDetails) &&
            const DeepCollectionEquality()
                .equals(other.bookingStatus, bookingStatus) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails) &&
            const DeepCollectionEquality().equals(other.daysLeft, daysLeft) &&
            const DeepCollectionEquality()
                .equals(other.isReorderDone, isReorderDone) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.lastDate, lastDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petDetails),
      const DeepCollectionEquality().hash(bookingStatus),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(bookingDetails),
      const DeepCollectionEquality().hash(daysLeft),
      const DeepCollectionEquality().hash(isReorderDone),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(lastDate));

  @JsonKey(ignore: true)
  @override
  _$DogRunningAppointmentListResponseCopyWith<
          _DogRunningAppointmentListResponse>
      get copyWith => __$DogRunningAppointmentListResponseCopyWithImpl<
          _DogRunningAppointmentListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogRunningAppointmentListResponseToJson(this);
  }
}

abstract class _DogRunningAppointmentListResponse
    extends DogRunningAppointmentListResponse {
  factory _DogRunningAppointmentListResponse(
      {@JsonKey(name: "petDetails")
          List<PetDetailsResponse>? petDetails,
      @JsonKey(name: "bookingStatus")
          int? bookingStatus,
      @JsonKey(name: "serviceType")
          int? serviceType,
      @JsonKey(name: "_id")
          String? appointmentId,
      @JsonKey(name: "ServiceProvider")
          UserDetailsResponse? user,
      @JsonKey(name: "bookingDetails")
          DogRunningBookingDetailsResponse? bookingDetails,
      @JsonKey(name: "daysLeft")
          int? daysLeft,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "lastDate")
          String? lastDate}) = _$_DogRunningAppointmentListResponse;
  _DogRunningAppointmentListResponse._() : super._();

  factory _DogRunningAppointmentListResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogRunningAppointmentListResponse.fromJson;

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
  @JsonKey(name: "ServiceProvider")
  UserDetailsResponse? get user;
  @override
  @JsonKey(name: "bookingDetails")
  DogRunningBookingDetailsResponse? get bookingDetails;
  @override
  @JsonKey(name: "daysLeft")
  int? get daysLeft;
  @override
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "lastDate")
  String? get lastDate;
  @override
  @JsonKey(ignore: true)
  _$DogRunningAppointmentListResponseCopyWith<
          _DogRunningAppointmentListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

UserDetailsResponse _$UserDetailsResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailsResponse.fromJson(json);
}

/// @nodoc
class _$UserDetailsResponseTearOff {
  const _$UserDetailsResponseTearOff();

  _UserDetailsResponse call(
      {@JsonKey(name: "_id") String? userId,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar}) {
    return _UserDetailsResponse(
      userId: userId,
      username: username,
      fullName: fullName,
      avatar: avatar,
    );
  }

  UserDetailsResponse fromJson(Map<String, Object?> json) {
    return UserDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $UserDetailsResponse = _$UserDetailsResponseTearOff();

/// @nodoc
mixin _$UserDetailsResponse {
  @JsonKey(name: "_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsResponseCopyWith<UserDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsResponseCopyWith<$Res> {
  factory $UserDetailsResponseCopyWith(
          UserDetailsResponse value, $Res Function(UserDetailsResponse) then) =
      _$UserDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? userId,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class _$UserDetailsResponseCopyWithImpl<$Res>
    implements $UserDetailsResponseCopyWith<$Res> {
  _$UserDetailsResponseCopyWithImpl(this._value, this._then);

  final UserDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailsResponse) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailsResponseCopyWith<$Res>
    implements $UserDetailsResponseCopyWith<$Res> {
  factory _$UserDetailsResponseCopyWith(_UserDetailsResponse value,
          $Res Function(_UserDetailsResponse) then) =
      __$UserDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? userId,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class __$UserDetailsResponseCopyWithImpl<$Res>
    extends _$UserDetailsResponseCopyWithImpl<$Res>
    implements _$UserDetailsResponseCopyWith<$Res> {
  __$UserDetailsResponseCopyWithImpl(
      _UserDetailsResponse _value, $Res Function(_UserDetailsResponse) _then)
      : super(_value, (v) => _then(v as _UserDetailsResponse));

  @override
  _UserDetailsResponse get _value => super._value as _UserDetailsResponse;

  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_UserDetailsResponse(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailsResponse extends _UserDetailsResponse {
  _$_UserDetailsResponse(
      {@JsonKey(name: "_id") this.userId,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "avatar") this.avatar})
      : super._();

  factory _$_UserDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? userId;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'UserDetailsResponse(userId: $userId, username: $username, fullName: $fullName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailsResponse &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$UserDetailsResponseCopyWith<_UserDetailsResponse> get copyWith =>
      __$UserDetailsResponseCopyWithImpl<_UserDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsResponseToJson(this);
  }
}

abstract class _UserDetailsResponse extends UserDetailsResponse {
  factory _UserDetailsResponse(
      {@JsonKey(name: "_id") String? userId,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar}) = _$_UserDetailsResponse;
  _UserDetailsResponse._() : super._();

  factory _UserDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get userId;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsResponseCopyWith<_UserDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DogTrainingBookingDetailsResponse _$DogTrainingBookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogTrainingBookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogTrainingBookingDetailsResponseTearOff {
  const _$DogTrainingBookingDetailsResponseTearOff();

  _DogTrainingBookingDetailsResponse call(
      {@JsonKey(name: "package")
          DogTrainingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogTrainingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets}) {
    return _DogTrainingBookingDetailsResponse(
      package: package,
      bookingId: bookingId,
      startDate: startDate,
      paymentDetails: paymentDetails,
      petRunningLocation: petRunningLocation,
      numberOfPets: numberOfPets,
    );
  }

  DogTrainingBookingDetailsResponse fromJson(Map<String, Object?> json) {
    return DogTrainingBookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogTrainingBookingDetailsResponse =
    _$DogTrainingBookingDetailsResponseTearOff();

/// @nodoc
mixin _$DogTrainingBookingDetailsResponse {
  @JsonKey(name: "package")
  DogTrainingPackageResponse? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentDetails")
  DogTrainingPaymentDetailsResponse? get paymentDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "petRunningLocation")
  LocationResponse? get petRunningLocation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogTrainingBookingDetailsResponseCopyWith<DogTrainingBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogTrainingBookingDetailsResponseCopyWith<$Res> {
  factory $DogTrainingBookingDetailsResponseCopyWith(
          DogTrainingBookingDetailsResponse value,
          $Res Function(DogTrainingBookingDetailsResponse) then) =
      _$DogTrainingBookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "package")
          DogTrainingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogTrainingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets});

  $DogTrainingPackageResponseCopyWith<$Res>? get package;
  $DogTrainingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
  $LocationResponseCopyWith<$Res>? get petRunningLocation;
}

/// @nodoc
class _$DogTrainingBookingDetailsResponseCopyWithImpl<$Res>
    implements $DogTrainingBookingDetailsResponseCopyWith<$Res> {
  _$DogTrainingBookingDetailsResponseCopyWithImpl(this._value, this._then);

  final DogTrainingBookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogTrainingBookingDetailsResponse) _then;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? startDate = freezed,
    Object? paymentDetails = freezed,
    Object? petRunningLocation = freezed,
    Object? numberOfPets = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogTrainingPackageResponse?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogTrainingPaymentDetailsResponse?,
      petRunningLocation: petRunningLocation == freezed
          ? _value.petRunningLocation
          : petRunningLocation // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $DogTrainingPackageResponseCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $DogTrainingPackageResponseCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value));
    });
  }

  @override
  $DogTrainingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $DogTrainingPaymentDetailsResponseCopyWith<$Res>(
        _value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value));
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
}

/// @nodoc
abstract class _$DogTrainingBookingDetailsResponseCopyWith<$Res>
    implements $DogTrainingBookingDetailsResponseCopyWith<$Res> {
  factory _$DogTrainingBookingDetailsResponseCopyWith(
          _DogTrainingBookingDetailsResponse value,
          $Res Function(_DogTrainingBookingDetailsResponse) then) =
      __$DogTrainingBookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "package")
          DogTrainingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogTrainingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets});

  @override
  $DogTrainingPackageResponseCopyWith<$Res>? get package;
  @override
  $DogTrainingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
  @override
  $LocationResponseCopyWith<$Res>? get petRunningLocation;
}

/// @nodoc
class __$DogTrainingBookingDetailsResponseCopyWithImpl<$Res>
    extends _$DogTrainingBookingDetailsResponseCopyWithImpl<$Res>
    implements _$DogTrainingBookingDetailsResponseCopyWith<$Res> {
  __$DogTrainingBookingDetailsResponseCopyWithImpl(
      _DogTrainingBookingDetailsResponse _value,
      $Res Function(_DogTrainingBookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogTrainingBookingDetailsResponse));

  @override
  _DogTrainingBookingDetailsResponse get _value =>
      super._value as _DogTrainingBookingDetailsResponse;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? startDate = freezed,
    Object? paymentDetails = freezed,
    Object? petRunningLocation = freezed,
    Object? numberOfPets = freezed,
  }) {
    return _then(_DogTrainingBookingDetailsResponse(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogTrainingPackageResponse?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogTrainingPaymentDetailsResponse?,
      petRunningLocation: petRunningLocation == freezed
          ? _value.petRunningLocation
          : petRunningLocation // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogTrainingBookingDetailsResponse
    extends _DogTrainingBookingDetailsResponse {
  _$_DogTrainingBookingDetailsResponse(
      {@JsonKey(name: "package") this.package,
      @JsonKey(name: "_id") this.bookingId,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "paymentDetails") this.paymentDetails,
      @JsonKey(name: "petRunningLocation") this.petRunningLocation,
      @JsonKey(name: "numberOfPets") this.numberOfPets})
      : super._();

  factory _$_DogTrainingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogTrainingBookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "package")
  final DogTrainingPackageResponse? package;
  @override
  @JsonKey(name: "_id")
  final String? bookingId;
  @override
  @JsonKey(name: "startDate")
  final String? startDate;
  @override
  @JsonKey(name: "paymentDetails")
  final DogTrainingPaymentDetailsResponse? paymentDetails;
  @override
  @JsonKey(name: "petRunningLocation")
  final LocationResponse? petRunningLocation;
  @override
  @JsonKey(name: "numberOfPets")
  final int? numberOfPets;

  @override
  String toString() {
    return 'DogTrainingBookingDetailsResponse(package: $package, bookingId: $bookingId, startDate: $startDate, paymentDetails: $paymentDetails, petRunningLocation: $petRunningLocation, numberOfPets: $numberOfPets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogTrainingBookingDetailsResponse &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.paymentDetails, paymentDetails) &&
            const DeepCollectionEquality()
                .equals(other.petRunningLocation, petRunningLocation) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPets, numberOfPets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(paymentDetails),
      const DeepCollectionEquality().hash(petRunningLocation),
      const DeepCollectionEquality().hash(numberOfPets));

  @JsonKey(ignore: true)
  @override
  _$DogTrainingBookingDetailsResponseCopyWith<
          _DogTrainingBookingDetailsResponse>
      get copyWith => __$DogTrainingBookingDetailsResponseCopyWithImpl<
          _DogTrainingBookingDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogTrainingBookingDetailsResponseToJson(this);
  }
}

abstract class _DogTrainingBookingDetailsResponse
    extends DogTrainingBookingDetailsResponse {
  factory _DogTrainingBookingDetailsResponse(
      {@JsonKey(name: "package")
          DogTrainingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogTrainingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "petRunningLocation")
          LocationResponse? petRunningLocation,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets}) = _$_DogTrainingBookingDetailsResponse;
  _DogTrainingBookingDetailsResponse._() : super._();

  factory _DogTrainingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogTrainingBookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "package")
  DogTrainingPackageResponse? get package;
  @override
  @JsonKey(name: "_id")
  String? get bookingId;
  @override
  @JsonKey(name: "startDate")
  String? get startDate;
  @override
  @JsonKey(name: "paymentDetails")
  DogTrainingPaymentDetailsResponse? get paymentDetails;
  @override
  @JsonKey(name: "petRunningLocation")
  LocationResponse? get petRunningLocation;
  @override
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets;
  @override
  @JsonKey(ignore: true)
  _$DogTrainingBookingDetailsResponseCopyWith<
          _DogTrainingBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogBoardingBookingDetailsResponse _$DogBoardingBookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogBoardingBookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogBoardingBookingDetailsResponseTearOff {
  const _$DogBoardingBookingDetailsResponseTearOff();

  _DogBoardingBookingDetailsResponse call(
      {@JsonKey(name: "package")
          DogBoardingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          int? startDate,
      @JsonKey(name: "paymentDetails")
          DogBoardingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "phone")
          String? phone}) {
    return _DogBoardingBookingDetailsResponse(
      package: package,
      bookingId: bookingId,
      startDate: startDate,
      paymentDetails: paymentDetails,
      isReorderDone: isReorderDone,
      numberOfPets: numberOfPets,
      createdAt: createdAt,
      phone: phone,
    );
  }

  DogBoardingBookingDetailsResponse fromJson(Map<String, Object?> json) {
    return DogBoardingBookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogBoardingBookingDetailsResponse =
    _$DogBoardingBookingDetailsResponseTearOff();

/// @nodoc
mixin _$DogBoardingBookingDetailsResponse {
  @JsonKey(name: "package")
  DogBoardingPackageResponse? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  int? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentDetails")
  DogBoardingPaymentDetailsResponse? get paymentDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogBoardingBookingDetailsResponseCopyWith<DogBoardingBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogBoardingBookingDetailsResponseCopyWith<$Res> {
  factory $DogBoardingBookingDetailsResponseCopyWith(
          DogBoardingBookingDetailsResponse value,
          $Res Function(DogBoardingBookingDetailsResponse) then) =
      _$DogBoardingBookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "package")
          DogBoardingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          int? startDate,
      @JsonKey(name: "paymentDetails")
          DogBoardingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "phone")
          String? phone});

  $DogBoardingPackageResponseCopyWith<$Res>? get package;
  $DogBoardingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class _$DogBoardingBookingDetailsResponseCopyWithImpl<$Res>
    implements $DogBoardingBookingDetailsResponseCopyWith<$Res> {
  _$DogBoardingBookingDetailsResponseCopyWithImpl(this._value, this._then);

  final DogBoardingBookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogBoardingBookingDetailsResponse) _then;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? startDate = freezed,
    Object? paymentDetails = freezed,
    Object? isReorderDone = freezed,
    Object? numberOfPets = freezed,
    Object? createdAt = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogBoardingPackageResponse?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogBoardingPaymentDetailsResponse?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DogBoardingPackageResponseCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $DogBoardingPackageResponseCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value));
    });
  }

  @override
  $DogBoardingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $DogBoardingPaymentDetailsResponseCopyWith<$Res>(
        _value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value));
    });
  }
}

/// @nodoc
abstract class _$DogBoardingBookingDetailsResponseCopyWith<$Res>
    implements $DogBoardingBookingDetailsResponseCopyWith<$Res> {
  factory _$DogBoardingBookingDetailsResponseCopyWith(
          _DogBoardingBookingDetailsResponse value,
          $Res Function(_DogBoardingBookingDetailsResponse) then) =
      __$DogBoardingBookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "package")
          DogBoardingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          int? startDate,
      @JsonKey(name: "paymentDetails")
          DogBoardingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "phone")
          String? phone});

  @override
  $DogBoardingPackageResponseCopyWith<$Res>? get package;
  @override
  $DogBoardingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class __$DogBoardingBookingDetailsResponseCopyWithImpl<$Res>
    extends _$DogBoardingBookingDetailsResponseCopyWithImpl<$Res>
    implements _$DogBoardingBookingDetailsResponseCopyWith<$Res> {
  __$DogBoardingBookingDetailsResponseCopyWithImpl(
      _DogBoardingBookingDetailsResponse _value,
      $Res Function(_DogBoardingBookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogBoardingBookingDetailsResponse));

  @override
  _DogBoardingBookingDetailsResponse get _value =>
      super._value as _DogBoardingBookingDetailsResponse;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? startDate = freezed,
    Object? paymentDetails = freezed,
    Object? isReorderDone = freezed,
    Object? numberOfPets = freezed,
    Object? createdAt = freezed,
    Object? phone = freezed,
  }) {
    return _then(_DogBoardingBookingDetailsResponse(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogBoardingPackageResponse?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogBoardingPaymentDetailsResponse?,
      isReorderDone: isReorderDone == freezed
          ? _value.isReorderDone
          : isReorderDone // ignore: cast_nullable_to_non_nullable
              as bool?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogBoardingBookingDetailsResponse
    extends _DogBoardingBookingDetailsResponse {
  _$_DogBoardingBookingDetailsResponse(
      {@JsonKey(name: "package") this.package,
      @JsonKey(name: "_id") this.bookingId,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "paymentDetails") this.paymentDetails,
      @JsonKey(name: "isReorderDone") this.isReorderDone,
      @JsonKey(name: "numberOfPets") this.numberOfPets,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "phone") this.phone})
      : super._();

  factory _$_DogBoardingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogBoardingBookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "package")
  final DogBoardingPackageResponse? package;
  @override
  @JsonKey(name: "_id")
  final String? bookingId;
  @override
  @JsonKey(name: "startDate")
  final int? startDate;
  @override
  @JsonKey(name: "paymentDetails")
  final DogBoardingPaymentDetailsResponse? paymentDetails;
  @override
  @JsonKey(name: "isReorderDone")
  final bool? isReorderDone;
  @override
  @JsonKey(name: "numberOfPets")
  final int? numberOfPets;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "phone")
  final String? phone;

  @override
  String toString() {
    return 'DogBoardingBookingDetailsResponse(package: $package, bookingId: $bookingId, startDate: $startDate, paymentDetails: $paymentDetails, isReorderDone: $isReorderDone, numberOfPets: $numberOfPets, createdAt: $createdAt, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogBoardingBookingDetailsResponse &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.paymentDetails, paymentDetails) &&
            const DeepCollectionEquality()
                .equals(other.isReorderDone, isReorderDone) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPets, numberOfPets) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(paymentDetails),
      const DeepCollectionEquality().hash(isReorderDone),
      const DeepCollectionEquality().hash(numberOfPets),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$DogBoardingBookingDetailsResponseCopyWith<
          _DogBoardingBookingDetailsResponse>
      get copyWith => __$DogBoardingBookingDetailsResponseCopyWithImpl<
          _DogBoardingBookingDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogBoardingBookingDetailsResponseToJson(this);
  }
}

abstract class _DogBoardingBookingDetailsResponse
    extends DogBoardingBookingDetailsResponse {
  factory _DogBoardingBookingDetailsResponse(
      {@JsonKey(name: "package")
          DogBoardingPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "startDate")
          int? startDate,
      @JsonKey(name: "paymentDetails")
          DogBoardingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "isReorderDone")
          bool? isReorderDone,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "createdAt")
          String? createdAt,
      @JsonKey(name: "phone")
          String? phone}) = _$_DogBoardingBookingDetailsResponse;
  _DogBoardingBookingDetailsResponse._() : super._();

  factory _DogBoardingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogBoardingBookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "package")
  DogBoardingPackageResponse? get package;
  @override
  @JsonKey(name: "_id")
  String? get bookingId;
  @override
  @JsonKey(name: "startDate")
  int? get startDate;
  @override
  @JsonKey(name: "paymentDetails")
  DogBoardingPaymentDetailsResponse? get paymentDetails;
  @override
  @JsonKey(name: "isReorderDone")
  bool? get isReorderDone;
  @override
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$DogBoardingBookingDetailsResponseCopyWith<
          _DogBoardingBookingDetailsResponse>
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

DogGroomingBookingDetailsResponse _$DogGroomingBookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogGroomingBookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogGroomingBookingDetailsResponseTearOff {
  const _$DogGroomingBookingDetailsResponseTearOff();

  _DogGroomingBookingDetailsResponse call(
      {@JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "sessionDetails")
          DogGroomingSessionDetailsResponse? sessionDetails,
      @JsonKey(name: "paymentDetails")
          DogGroomingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "package")
          DogGroomingPackageDetailsResponse? package,
      @JsonKey(name: "startDate")
          String? startDate}) {
    return _DogGroomingBookingDetailsResponse(
      bookingId: bookingId,
      sessionDetails: sessionDetails,
      paymentDetails: paymentDetails,
      numberOfPets: numberOfPets,
      package: package,
      startDate: startDate,
    );
  }

  DogGroomingBookingDetailsResponse fromJson(Map<String, Object?> json) {
    return DogGroomingBookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogGroomingBookingDetailsResponse =
    _$DogGroomingBookingDetailsResponseTearOff();

/// @nodoc
mixin _$DogGroomingBookingDetailsResponse {
  @JsonKey(name: "_id")
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionDetails")
  DogGroomingSessionDetailsResponse? get sessionDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "paymentDetails")
  DogGroomingPaymentDetailsResponse? get paymentDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets => throw _privateConstructorUsedError;
  @JsonKey(name: "package")
  DogGroomingPackageDetailsResponse? get package =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogGroomingBookingDetailsResponseCopyWith<DogGroomingBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogGroomingBookingDetailsResponseCopyWith<$Res> {
  factory $DogGroomingBookingDetailsResponseCopyWith(
          DogGroomingBookingDetailsResponse value,
          $Res Function(DogGroomingBookingDetailsResponse) then) =
      _$DogGroomingBookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "sessionDetails")
          DogGroomingSessionDetailsResponse? sessionDetails,
      @JsonKey(name: "paymentDetails")
          DogGroomingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "package")
          DogGroomingPackageDetailsResponse? package,
      @JsonKey(name: "startDate")
          String? startDate});

  $DogGroomingSessionDetailsResponseCopyWith<$Res>? get sessionDetails;
  $DogGroomingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
  $DogGroomingPackageDetailsResponseCopyWith<$Res>? get package;
}

/// @nodoc
class _$DogGroomingBookingDetailsResponseCopyWithImpl<$Res>
    implements $DogGroomingBookingDetailsResponseCopyWith<$Res> {
  _$DogGroomingBookingDetailsResponseCopyWithImpl(this._value, this._then);

  final DogGroomingBookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogGroomingBookingDetailsResponse) _then;

  @override
  $Res call({
    Object? bookingId = freezed,
    Object? sessionDetails = freezed,
    Object? paymentDetails = freezed,
    Object? numberOfPets = freezed,
    Object? package = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDetails: sessionDetails == freezed
          ? _value.sessionDetails
          : sessionDetails // ignore: cast_nullable_to_non_nullable
              as DogGroomingSessionDetailsResponse?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogGroomingPaymentDetailsResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogGroomingPackageDetailsResponse?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DogGroomingSessionDetailsResponseCopyWith<$Res>? get sessionDetails {
    if (_value.sessionDetails == null) {
      return null;
    }

    return $DogGroomingSessionDetailsResponseCopyWith<$Res>(
        _value.sessionDetails!, (value) {
      return _then(_value.copyWith(sessionDetails: value));
    });
  }

  @override
  $DogGroomingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $DogGroomingPaymentDetailsResponseCopyWith<$Res>(
        _value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value));
    });
  }

  @override
  $DogGroomingPackageDetailsResponseCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $DogGroomingPackageDetailsResponseCopyWith<$Res>(_value.package!,
        (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc
abstract class _$DogGroomingBookingDetailsResponseCopyWith<$Res>
    implements $DogGroomingBookingDetailsResponseCopyWith<$Res> {
  factory _$DogGroomingBookingDetailsResponseCopyWith(
          _DogGroomingBookingDetailsResponse value,
          $Res Function(_DogGroomingBookingDetailsResponse) then) =
      __$DogGroomingBookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "sessionDetails")
          DogGroomingSessionDetailsResponse? sessionDetails,
      @JsonKey(name: "paymentDetails")
          DogGroomingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "package")
          DogGroomingPackageDetailsResponse? package,
      @JsonKey(name: "startDate")
          String? startDate});

  @override
  $DogGroomingSessionDetailsResponseCopyWith<$Res>? get sessionDetails;
  @override
  $DogGroomingPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
  @override
  $DogGroomingPackageDetailsResponseCopyWith<$Res>? get package;
}

/// @nodoc
class __$DogGroomingBookingDetailsResponseCopyWithImpl<$Res>
    extends _$DogGroomingBookingDetailsResponseCopyWithImpl<$Res>
    implements _$DogGroomingBookingDetailsResponseCopyWith<$Res> {
  __$DogGroomingBookingDetailsResponseCopyWithImpl(
      _DogGroomingBookingDetailsResponse _value,
      $Res Function(_DogGroomingBookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogGroomingBookingDetailsResponse));

  @override
  _DogGroomingBookingDetailsResponse get _value =>
      super._value as _DogGroomingBookingDetailsResponse;

  @override
  $Res call({
    Object? bookingId = freezed,
    Object? sessionDetails = freezed,
    Object? paymentDetails = freezed,
    Object? numberOfPets = freezed,
    Object? package = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_DogGroomingBookingDetailsResponse(
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDetails: sessionDetails == freezed
          ? _value.sessionDetails
          : sessionDetails // ignore: cast_nullable_to_non_nullable
              as DogGroomingSessionDetailsResponse?,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogGroomingPaymentDetailsResponse?,
      numberOfPets: numberOfPets == freezed
          ? _value.numberOfPets
          : numberOfPets // ignore: cast_nullable_to_non_nullable
              as int?,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogGroomingPackageDetailsResponse?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogGroomingBookingDetailsResponse
    extends _DogGroomingBookingDetailsResponse {
  _$_DogGroomingBookingDetailsResponse(
      {@JsonKey(name: "_id") this.bookingId,
      @JsonKey(name: "sessionDetails") this.sessionDetails,
      @JsonKey(name: "paymentDetails") this.paymentDetails,
      @JsonKey(name: "numberOfPets") this.numberOfPets,
      @JsonKey(name: "package") this.package,
      @JsonKey(name: "startDate") this.startDate})
      : super._();

  factory _$_DogGroomingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogGroomingBookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? bookingId;
  @override
  @JsonKey(name: "sessionDetails")
  final DogGroomingSessionDetailsResponse? sessionDetails;
  @override
  @JsonKey(name: "paymentDetails")
  final DogGroomingPaymentDetailsResponse? paymentDetails;
  @override
  @JsonKey(name: "numberOfPets")
  final int? numberOfPets;
  @override
  @JsonKey(name: "package")
  final DogGroomingPackageDetailsResponse? package;
  @override
  @JsonKey(name: "startDate")
  final String? startDate;

  @override
  String toString() {
    return 'DogGroomingBookingDetailsResponse(bookingId: $bookingId, sessionDetails: $sessionDetails, paymentDetails: $paymentDetails, numberOfPets: $numberOfPets, package: $package, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogGroomingBookingDetailsResponse &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality()
                .equals(other.sessionDetails, sessionDetails) &&
            const DeepCollectionEquality()
                .equals(other.paymentDetails, paymentDetails) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPets, numberOfPets) &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality().equals(other.startDate, startDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(sessionDetails),
      const DeepCollectionEquality().hash(paymentDetails),
      const DeepCollectionEquality().hash(numberOfPets),
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(startDate));

  @JsonKey(ignore: true)
  @override
  _$DogGroomingBookingDetailsResponseCopyWith<
          _DogGroomingBookingDetailsResponse>
      get copyWith => __$DogGroomingBookingDetailsResponseCopyWithImpl<
          _DogGroomingBookingDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogGroomingBookingDetailsResponseToJson(this);
  }
}

abstract class _DogGroomingBookingDetailsResponse
    extends DogGroomingBookingDetailsResponse {
  factory _DogGroomingBookingDetailsResponse(
      {@JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "sessionDetails")
          DogGroomingSessionDetailsResponse? sessionDetails,
      @JsonKey(name: "paymentDetails")
          DogGroomingPaymentDetailsResponse? paymentDetails,
      @JsonKey(name: "numberOfPets")
          int? numberOfPets,
      @JsonKey(name: "package")
          DogGroomingPackageDetailsResponse? package,
      @JsonKey(name: "startDate")
          String? startDate}) = _$_DogGroomingBookingDetailsResponse;
  _DogGroomingBookingDetailsResponse._() : super._();

  factory _DogGroomingBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogGroomingBookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get bookingId;
  @override
  @JsonKey(name: "sessionDetails")
  DogGroomingSessionDetailsResponse? get sessionDetails;
  @override
  @JsonKey(name: "paymentDetails")
  DogGroomingPaymentDetailsResponse? get paymentDetails;
  @override
  @JsonKey(name: "numberOfPets")
  int? get numberOfPets;
  @override
  @JsonKey(name: "package")
  DogGroomingPackageDetailsResponse? get package;
  @override
  @JsonKey(name: "startDate")
  String? get startDate;
  @override
  @JsonKey(ignore: true)
  _$DogGroomingBookingDetailsResponseCopyWith<
          _DogGroomingBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogGroomingSessionDetailsResponse _$DogGroomingSessionDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogGroomingSessionDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogGroomingSessionDetailsResponseTearOff {
  const _$DogGroomingSessionDetailsResponseTearOff();

  _DogGroomingSessionDetailsResponse call(
      {@JsonKey(name: "sessionStatus") int? sessionStatus,
      @JsonKey(name: "sessionTime") String? sessionTime}) {
    return _DogGroomingSessionDetailsResponse(
      sessionStatus: sessionStatus,
      sessionTime: sessionTime,
    );
  }

  DogGroomingSessionDetailsResponse fromJson(Map<String, Object?> json) {
    return DogGroomingSessionDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogGroomingSessionDetailsResponse =
    _$DogGroomingSessionDetailsResponseTearOff();

/// @nodoc
mixin _$DogGroomingSessionDetailsResponse {
  @JsonKey(name: "sessionStatus")
  int? get sessionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionTime")
  String? get sessionTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogGroomingSessionDetailsResponseCopyWith<DogGroomingSessionDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogGroomingSessionDetailsResponseCopyWith<$Res> {
  factory $DogGroomingSessionDetailsResponseCopyWith(
          DogGroomingSessionDetailsResponse value,
          $Res Function(DogGroomingSessionDetailsResponse) then) =
      _$DogGroomingSessionDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "sessionStatus") int? sessionStatus,
      @JsonKey(name: "sessionTime") String? sessionTime});
}

/// @nodoc
class _$DogGroomingSessionDetailsResponseCopyWithImpl<$Res>
    implements $DogGroomingSessionDetailsResponseCopyWith<$Res> {
  _$DogGroomingSessionDetailsResponseCopyWithImpl(this._value, this._then);

  final DogGroomingSessionDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogGroomingSessionDetailsResponse) _then;

  @override
  $Res call({
    Object? sessionStatus = freezed,
    Object? sessionTime = freezed,
  }) {
    return _then(_value.copyWith(
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionTime: sessionTime == freezed
          ? _value.sessionTime
          : sessionTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DogGroomingSessionDetailsResponseCopyWith<$Res>
    implements $DogGroomingSessionDetailsResponseCopyWith<$Res> {
  factory _$DogGroomingSessionDetailsResponseCopyWith(
          _DogGroomingSessionDetailsResponse value,
          $Res Function(_DogGroomingSessionDetailsResponse) then) =
      __$DogGroomingSessionDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "sessionStatus") int? sessionStatus,
      @JsonKey(name: "sessionTime") String? sessionTime});
}

/// @nodoc
class __$DogGroomingSessionDetailsResponseCopyWithImpl<$Res>
    extends _$DogGroomingSessionDetailsResponseCopyWithImpl<$Res>
    implements _$DogGroomingSessionDetailsResponseCopyWith<$Res> {
  __$DogGroomingSessionDetailsResponseCopyWithImpl(
      _DogGroomingSessionDetailsResponse _value,
      $Res Function(_DogGroomingSessionDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogGroomingSessionDetailsResponse));

  @override
  _DogGroomingSessionDetailsResponse get _value =>
      super._value as _DogGroomingSessionDetailsResponse;

  @override
  $Res call({
    Object? sessionStatus = freezed,
    Object? sessionTime = freezed,
  }) {
    return _then(_DogGroomingSessionDetailsResponse(
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionTime: sessionTime == freezed
          ? _value.sessionTime
          : sessionTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogGroomingSessionDetailsResponse
    extends _DogGroomingSessionDetailsResponse {
  _$_DogGroomingSessionDetailsResponse(
      {@JsonKey(name: "sessionStatus") this.sessionStatus,
      @JsonKey(name: "sessionTime") this.sessionTime})
      : super._();

  factory _$_DogGroomingSessionDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogGroomingSessionDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "sessionStatus")
  final int? sessionStatus;
  @override
  @JsonKey(name: "sessionTime")
  final String? sessionTime;

  @override
  String toString() {
    return 'DogGroomingSessionDetailsResponse(sessionStatus: $sessionStatus, sessionTime: $sessionTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogGroomingSessionDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus) &&
            const DeepCollectionEquality()
                .equals(other.sessionTime, sessionTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionStatus),
      const DeepCollectionEquality().hash(sessionTime));

  @JsonKey(ignore: true)
  @override
  _$DogGroomingSessionDetailsResponseCopyWith<
          _DogGroomingSessionDetailsResponse>
      get copyWith => __$DogGroomingSessionDetailsResponseCopyWithImpl<
          _DogGroomingSessionDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogGroomingSessionDetailsResponseToJson(this);
  }
}

abstract class _DogGroomingSessionDetailsResponse
    extends DogGroomingSessionDetailsResponse {
  factory _DogGroomingSessionDetailsResponse(
          {@JsonKey(name: "sessionStatus") int? sessionStatus,
          @JsonKey(name: "sessionTime") String? sessionTime}) =
      _$_DogGroomingSessionDetailsResponse;
  _DogGroomingSessionDetailsResponse._() : super._();

  factory _DogGroomingSessionDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogGroomingSessionDetailsResponse.fromJson;

  @override
  @JsonKey(name: "sessionStatus")
  int? get sessionStatus;
  @override
  @JsonKey(name: "sessionTime")
  String? get sessionTime;
  @override
  @JsonKey(ignore: true)
  _$DogGroomingSessionDetailsResponseCopyWith<
          _DogGroomingSessionDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogGroomingPaymentDetailsResponse _$DogGroomingPaymentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogGroomingPaymentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogGroomingPaymentDetailsResponseTearOff {
  const _$DogGroomingPaymentDetailsResponseTearOff();

  _DogGroomingPaymentDetailsResponse call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId}) {
    return _DogGroomingPaymentDetailsResponse(
      paymentStatus: paymentStatus,
      amount: amount,
      transactionId: transactionId,
    );
  }

  DogGroomingPaymentDetailsResponse fromJson(Map<String, Object?> json) {
    return DogGroomingPaymentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogGroomingPaymentDetailsResponse =
    _$DogGroomingPaymentDetailsResponseTearOff();

/// @nodoc
mixin _$DogGroomingPaymentDetailsResponse {
  @JsonKey(name: "status")
  int? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionId")
  String? get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogGroomingPaymentDetailsResponseCopyWith<DogGroomingPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogGroomingPaymentDetailsResponseCopyWith<$Res> {
  factory $DogGroomingPaymentDetailsResponseCopyWith(
          DogGroomingPaymentDetailsResponse value,
          $Res Function(DogGroomingPaymentDetailsResponse) then) =
      _$DogGroomingPaymentDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId});
}

/// @nodoc
class _$DogGroomingPaymentDetailsResponseCopyWithImpl<$Res>
    implements $DogGroomingPaymentDetailsResponseCopyWith<$Res> {
  _$DogGroomingPaymentDetailsResponseCopyWithImpl(this._value, this._then);

  final DogGroomingPaymentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogGroomingPaymentDetailsResponse) _then;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DogGroomingPaymentDetailsResponseCopyWith<$Res>
    implements $DogGroomingPaymentDetailsResponseCopyWith<$Res> {
  factory _$DogGroomingPaymentDetailsResponseCopyWith(
          _DogGroomingPaymentDetailsResponse value,
          $Res Function(_DogGroomingPaymentDetailsResponse) then) =
      __$DogGroomingPaymentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId});
}

/// @nodoc
class __$DogGroomingPaymentDetailsResponseCopyWithImpl<$Res>
    extends _$DogGroomingPaymentDetailsResponseCopyWithImpl<$Res>
    implements _$DogGroomingPaymentDetailsResponseCopyWith<$Res> {
  __$DogGroomingPaymentDetailsResponseCopyWithImpl(
      _DogGroomingPaymentDetailsResponse _value,
      $Res Function(_DogGroomingPaymentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogGroomingPaymentDetailsResponse));

  @override
  _DogGroomingPaymentDetailsResponse get _value =>
      super._value as _DogGroomingPaymentDetailsResponse;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_DogGroomingPaymentDetailsResponse(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogGroomingPaymentDetailsResponse
    extends _DogGroomingPaymentDetailsResponse {
  _$_DogGroomingPaymentDetailsResponse(
      {@JsonKey(name: "status") this.paymentStatus,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "transactionId") this.transactionId})
      : super._();

  factory _$_DogGroomingPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogGroomingPaymentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? paymentStatus;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "transactionId")
  final String? transactionId;

  @override
  String toString() {
    return 'DogGroomingPaymentDetailsResponse(paymentStatus: $paymentStatus, amount: $amount, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogGroomingPaymentDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentStatus),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  _$DogGroomingPaymentDetailsResponseCopyWith<
          _DogGroomingPaymentDetailsResponse>
      get copyWith => __$DogGroomingPaymentDetailsResponseCopyWithImpl<
          _DogGroomingPaymentDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogGroomingPaymentDetailsResponseToJson(this);
  }
}

abstract class _DogGroomingPaymentDetailsResponse
    extends DogGroomingPaymentDetailsResponse {
  factory _DogGroomingPaymentDetailsResponse(
          {@JsonKey(name: "status") int? paymentStatus,
          @JsonKey(name: "amount") int? amount,
          @JsonKey(name: "transactionId") String? transactionId}) =
      _$_DogGroomingPaymentDetailsResponse;
  _DogGroomingPaymentDetailsResponse._() : super._();

  factory _DogGroomingPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogGroomingPaymentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "status")
  int? get paymentStatus;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "transactionId")
  String? get transactionId;
  @override
  @JsonKey(ignore: true)
  _$DogGroomingPaymentDetailsResponseCopyWith<
          _DogGroomingPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogGroomingPackageDetailsResponse _$DogGroomingPackageDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogGroomingPackageDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogGroomingPackageDetailsResponseTearOff {
  const _$DogGroomingPackageDetailsResponseTearOff();

  _DogGroomingPackageDetailsResponse call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") int? amount}) {
    return _DogGroomingPackageDetailsResponse(
      description: description,
      amount: amount,
    );
  }

  DogGroomingPackageDetailsResponse fromJson(Map<String, Object?> json) {
    return DogGroomingPackageDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogGroomingPackageDetailsResponse =
    _$DogGroomingPackageDetailsResponseTearOff();

/// @nodoc
mixin _$DogGroomingPackageDetailsResponse {
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogGroomingPackageDetailsResponseCopyWith<DogGroomingPackageDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogGroomingPackageDetailsResponseCopyWith<$Res> {
  factory $DogGroomingPackageDetailsResponseCopyWith(
          DogGroomingPackageDetailsResponse value,
          $Res Function(DogGroomingPackageDetailsResponse) then) =
      _$DogGroomingPackageDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") int? amount});
}

/// @nodoc
class _$DogGroomingPackageDetailsResponseCopyWithImpl<$Res>
    implements $DogGroomingPackageDetailsResponseCopyWith<$Res> {
  _$DogGroomingPackageDetailsResponseCopyWithImpl(this._value, this._then);

  final DogGroomingPackageDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogGroomingPackageDetailsResponse) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DogGroomingPackageDetailsResponseCopyWith<$Res>
    implements $DogGroomingPackageDetailsResponseCopyWith<$Res> {
  factory _$DogGroomingPackageDetailsResponseCopyWith(
          _DogGroomingPackageDetailsResponse value,
          $Res Function(_DogGroomingPackageDetailsResponse) then) =
      __$DogGroomingPackageDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") int? amount});
}

/// @nodoc
class __$DogGroomingPackageDetailsResponseCopyWithImpl<$Res>
    extends _$DogGroomingPackageDetailsResponseCopyWithImpl<$Res>
    implements _$DogGroomingPackageDetailsResponseCopyWith<$Res> {
  __$DogGroomingPackageDetailsResponseCopyWithImpl(
      _DogGroomingPackageDetailsResponse _value,
      $Res Function(_DogGroomingPackageDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogGroomingPackageDetailsResponse));

  @override
  _DogGroomingPackageDetailsResponse get _value =>
      super._value as _DogGroomingPackageDetailsResponse;

  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_DogGroomingPackageDetailsResponse(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogGroomingPackageDetailsResponse
    extends _DogGroomingPackageDetailsResponse {
  _$_DogGroomingPackageDetailsResponse(
      {@JsonKey(name: "description") this.description,
      @JsonKey(name: "amount") this.amount})
      : super._();

  factory _$_DogGroomingPackageDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogGroomingPackageDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "amount")
  final int? amount;

  @override
  String toString() {
    return 'DogGroomingPackageDetailsResponse(description: $description, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogGroomingPackageDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$DogGroomingPackageDetailsResponseCopyWith<
          _DogGroomingPackageDetailsResponse>
      get copyWith => __$DogGroomingPackageDetailsResponseCopyWithImpl<
          _DogGroomingPackageDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogGroomingPackageDetailsResponseToJson(this);
  }
}

abstract class _DogGroomingPackageDetailsResponse
    extends DogGroomingPackageDetailsResponse {
  factory _DogGroomingPackageDetailsResponse(
          {@JsonKey(name: "description") String? description,
          @JsonKey(name: "amount") int? amount}) =
      _$_DogGroomingPackageDetailsResponse;
  _DogGroomingPackageDetailsResponse._() : super._();

  factory _DogGroomingPackageDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DogGroomingPackageDetailsResponse.fromJson;

  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$DogGroomingPackageDetailsResponseCopyWith<
          _DogGroomingPackageDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogRunningBookingDetailsResponse _$DogRunningBookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogRunningBookingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogRunningBookingDetailsResponseTearOff {
  const _$DogRunningBookingDetailsResponseTearOff();

  _DogRunningBookingDetailsResponse call(
      {@JsonKey(name: "package")
          DogRunningPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "run1")
          String? run1Time,
      @JsonKey(name: "run2")
          String? run2Time,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogRunningPaymentDetailsResponse? paymentDetails}) {
    return _DogRunningBookingDetailsResponse(
      package: package,
      bookingId: bookingId,
      run1Time: run1Time,
      run2Time: run2Time,
      startDate: startDate,
      paymentDetails: paymentDetails,
    );
  }

  DogRunningBookingDetailsResponse fromJson(Map<String, Object?> json) {
    return DogRunningBookingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogRunningBookingDetailsResponse =
    _$DogRunningBookingDetailsResponseTearOff();

/// @nodoc
mixin _$DogRunningBookingDetailsResponse {
  @JsonKey(name: "package")
  DogRunningPackageResponse? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "run1")
  String? get run1Time => throw _privateConstructorUsedError;
  @JsonKey(name: "run2")
  String? get run2Time => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentDetails")
  DogRunningPaymentDetailsResponse? get paymentDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogRunningBookingDetailsResponseCopyWith<DogRunningBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogRunningBookingDetailsResponseCopyWith<$Res> {
  factory $DogRunningBookingDetailsResponseCopyWith(
          DogRunningBookingDetailsResponse value,
          $Res Function(DogRunningBookingDetailsResponse) then) =
      _$DogRunningBookingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "package")
          DogRunningPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "run1")
          String? run1Time,
      @JsonKey(name: "run2")
          String? run2Time,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogRunningPaymentDetailsResponse? paymentDetails});

  $DogRunningPackageResponseCopyWith<$Res>? get package;
  $DogRunningPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class _$DogRunningBookingDetailsResponseCopyWithImpl<$Res>
    implements $DogRunningBookingDetailsResponseCopyWith<$Res> {
  _$DogRunningBookingDetailsResponseCopyWithImpl(this._value, this._then);

  final DogRunningBookingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogRunningBookingDetailsResponse) _then;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? run1Time = freezed,
    Object? run2Time = freezed,
    Object? startDate = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogRunningPackageResponse?,
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
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogRunningPaymentDetailsResponse?,
    ));
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

  @override
  $DogRunningPaymentDetailsResponseCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $DogRunningPaymentDetailsResponseCopyWith<$Res>(
        _value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value));
    });
  }
}

/// @nodoc
abstract class _$DogRunningBookingDetailsResponseCopyWith<$Res>
    implements $DogRunningBookingDetailsResponseCopyWith<$Res> {
  factory _$DogRunningBookingDetailsResponseCopyWith(
          _DogRunningBookingDetailsResponse value,
          $Res Function(_DogRunningBookingDetailsResponse) then) =
      __$DogRunningBookingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "package")
          DogRunningPackageResponse? package,
      @JsonKey(name: "_id")
          String? bookingId,
      @JsonKey(name: "run1")
          String? run1Time,
      @JsonKey(name: "run2")
          String? run2Time,
      @JsonKey(name: "startDate")
          String? startDate,
      @JsonKey(name: "paymentDetails")
          DogRunningPaymentDetailsResponse? paymentDetails});

  @override
  $DogRunningPackageResponseCopyWith<$Res>? get package;
  @override
  $DogRunningPaymentDetailsResponseCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class __$DogRunningBookingDetailsResponseCopyWithImpl<$Res>
    extends _$DogRunningBookingDetailsResponseCopyWithImpl<$Res>
    implements _$DogRunningBookingDetailsResponseCopyWith<$Res> {
  __$DogRunningBookingDetailsResponseCopyWithImpl(
      _DogRunningBookingDetailsResponse _value,
      $Res Function(_DogRunningBookingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogRunningBookingDetailsResponse));

  @override
  _DogRunningBookingDetailsResponse get _value =>
      super._value as _DogRunningBookingDetailsResponse;

  @override
  $Res call({
    Object? package = freezed,
    Object? bookingId = freezed,
    Object? run1Time = freezed,
    Object? run2Time = freezed,
    Object? startDate = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_DogRunningBookingDetailsResponse(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as DogRunningPackageResponse?,
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
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as DogRunningPaymentDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogRunningBookingDetailsResponse
    extends _DogRunningBookingDetailsResponse {
  _$_DogRunningBookingDetailsResponse(
      {@JsonKey(name: "package") this.package,
      @JsonKey(name: "_id") this.bookingId,
      @JsonKey(name: "run1") this.run1Time,
      @JsonKey(name: "run2") this.run2Time,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "paymentDetails") this.paymentDetails})
      : super._();

  factory _$_DogRunningBookingDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogRunningBookingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "package")
  final DogRunningPackageResponse? package;
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
  @JsonKey(name: "paymentDetails")
  final DogRunningPaymentDetailsResponse? paymentDetails;

  @override
  String toString() {
    return 'DogRunningBookingDetailsResponse(package: $package, bookingId: $bookingId, run1Time: $run1Time, run2Time: $run2Time, startDate: $startDate, paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogRunningBookingDetailsResponse &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality().equals(other.run1Time, run1Time) &&
            const DeepCollectionEquality().equals(other.run2Time, run2Time) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.paymentDetails, paymentDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(run1Time),
      const DeepCollectionEquality().hash(run2Time),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(paymentDetails));

  @JsonKey(ignore: true)
  @override
  _$DogRunningBookingDetailsResponseCopyWith<_DogRunningBookingDetailsResponse>
      get copyWith => __$DogRunningBookingDetailsResponseCopyWithImpl<
          _DogRunningBookingDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogRunningBookingDetailsResponseToJson(this);
  }
}

abstract class _DogRunningBookingDetailsResponse
    extends DogRunningBookingDetailsResponse {
  factory _DogRunningBookingDetailsResponse(
          {@JsonKey(name: "package")
              DogRunningPackageResponse? package,
          @JsonKey(name: "_id")
              String? bookingId,
          @JsonKey(name: "run1")
              String? run1Time,
          @JsonKey(name: "run2")
              String? run2Time,
          @JsonKey(name: "startDate")
              String? startDate,
          @JsonKey(name: "paymentDetails")
              DogRunningPaymentDetailsResponse? paymentDetails}) =
      _$_DogRunningBookingDetailsResponse;
  _DogRunningBookingDetailsResponse._() : super._();

  factory _DogRunningBookingDetailsResponse.fromJson(
      Map<String, dynamic> json) = _$_DogRunningBookingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "package")
  DogRunningPackageResponse? get package;
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
  @JsonKey(name: "paymentDetails")
  DogRunningPaymentDetailsResponse? get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$DogRunningBookingDetailsResponseCopyWith<_DogRunningBookingDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogRunningPaymentDetailsResponse _$DogRunningPaymentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _DogRunningPaymentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$DogRunningPaymentDetailsResponseTearOff {
  const _$DogRunningPaymentDetailsResponseTearOff();

  _DogRunningPaymentDetailsResponse call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId}) {
    return _DogRunningPaymentDetailsResponse(
      paymentStatus: paymentStatus,
      amount: amount,
      transactionId: transactionId,
    );
  }

  DogRunningPaymentDetailsResponse fromJson(Map<String, Object?> json) {
    return DogRunningPaymentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $DogRunningPaymentDetailsResponse =
    _$DogRunningPaymentDetailsResponseTearOff();

/// @nodoc
mixin _$DogRunningPaymentDetailsResponse {
  @JsonKey(name: "status")
  int? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionId")
  String? get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogRunningPaymentDetailsResponseCopyWith<DogRunningPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogRunningPaymentDetailsResponseCopyWith<$Res> {
  factory $DogRunningPaymentDetailsResponseCopyWith(
          DogRunningPaymentDetailsResponse value,
          $Res Function(DogRunningPaymentDetailsResponse) then) =
      _$DogRunningPaymentDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId});
}

/// @nodoc
class _$DogRunningPaymentDetailsResponseCopyWithImpl<$Res>
    implements $DogRunningPaymentDetailsResponseCopyWith<$Res> {
  _$DogRunningPaymentDetailsResponseCopyWithImpl(this._value, this._then);

  final DogRunningPaymentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(DogRunningPaymentDetailsResponse) _then;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DogRunningPaymentDetailsResponseCopyWith<$Res>
    implements $DogRunningPaymentDetailsResponseCopyWith<$Res> {
  factory _$DogRunningPaymentDetailsResponseCopyWith(
          _DogRunningPaymentDetailsResponse value,
          $Res Function(_DogRunningPaymentDetailsResponse) then) =
      __$DogRunningPaymentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") int? paymentStatus,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "transactionId") String? transactionId});
}

/// @nodoc
class __$DogRunningPaymentDetailsResponseCopyWithImpl<$Res>
    extends _$DogRunningPaymentDetailsResponseCopyWithImpl<$Res>
    implements _$DogRunningPaymentDetailsResponseCopyWith<$Res> {
  __$DogRunningPaymentDetailsResponseCopyWithImpl(
      _DogRunningPaymentDetailsResponse _value,
      $Res Function(_DogRunningPaymentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _DogRunningPaymentDetailsResponse));

  @override
  _DogRunningPaymentDetailsResponse get _value =>
      super._value as _DogRunningPaymentDetailsResponse;

  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? amount = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_DogRunningPaymentDetailsResponse(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogRunningPaymentDetailsResponse
    extends _DogRunningPaymentDetailsResponse {
  _$_DogRunningPaymentDetailsResponse(
      {@JsonKey(name: "status") this.paymentStatus,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "transactionId") this.transactionId})
      : super._();

  factory _$_DogRunningPaymentDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DogRunningPaymentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? paymentStatus;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "transactionId")
  final String? transactionId;

  @override
  String toString() {
    return 'DogRunningPaymentDetailsResponse(paymentStatus: $paymentStatus, amount: $amount, transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogRunningPaymentDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentStatus),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  _$DogRunningPaymentDetailsResponseCopyWith<_DogRunningPaymentDetailsResponse>
      get copyWith => __$DogRunningPaymentDetailsResponseCopyWithImpl<
          _DogRunningPaymentDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogRunningPaymentDetailsResponseToJson(this);
  }
}

abstract class _DogRunningPaymentDetailsResponse
    extends DogRunningPaymentDetailsResponse {
  factory _DogRunningPaymentDetailsResponse(
          {@JsonKey(name: "status") int? paymentStatus,
          @JsonKey(name: "amount") int? amount,
          @JsonKey(name: "transactionId") String? transactionId}) =
      _$_DogRunningPaymentDetailsResponse;
  _DogRunningPaymentDetailsResponse._() : super._();

  factory _DogRunningPaymentDetailsResponse.fromJson(
      Map<String, dynamic> json) = _$_DogRunningPaymentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "status")
  int? get paymentStatus;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "transactionId")
  String? get transactionId;
  @override
  @JsonKey(ignore: true)
  _$DogRunningPaymentDetailsResponseCopyWith<_DogRunningPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogTrainingPackageResponse _$DogTrainingPackageResponseFromJson(
    Map<String, dynamic> json) {
  return _DogTrainingPackageResponse.fromJson(json);
}

/// @nodoc
class _$DogTrainingPackageResponseTearOff {
  const _$DogTrainingPackageResponseTearOff();

  _DogTrainingPackageResponse call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions}) {
    return _DogTrainingPackageResponse(
      subscriptionType: subscriptionType,
      amount: amount,
      numberOfSessions: numberOfSessions,
    );
  }

  DogTrainingPackageResponse fromJson(Map<String, Object?> json) {
    return DogTrainingPackageResponse.fromJson(json);
  }
}

/// @nodoc
const $DogTrainingPackageResponse = _$DogTrainingPackageResponseTearOff();

/// @nodoc
mixin _$DogTrainingPackageResponse {
  @JsonKey(name: "description")
  String? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency")
  int? get numberOfSessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogTrainingPackageResponseCopyWith<DogTrainingPackageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogTrainingPackageResponseCopyWith<$Res> {
  factory $DogTrainingPackageResponseCopyWith(DogTrainingPackageResponse value,
          $Res Function(DogTrainingPackageResponse) then) =
      _$DogTrainingPackageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions});
}

/// @nodoc
class _$DogTrainingPackageResponseCopyWithImpl<$Res>
    implements $DogTrainingPackageResponseCopyWith<$Res> {
  _$DogTrainingPackageResponseCopyWithImpl(this._value, this._then);

  final DogTrainingPackageResponse _value;
  // ignore: unused_field
  final $Res Function(DogTrainingPackageResponse) _then;

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
abstract class _$DogTrainingPackageResponseCopyWith<$Res>
    implements $DogTrainingPackageResponseCopyWith<$Res> {
  factory _$DogTrainingPackageResponseCopyWith(
          _DogTrainingPackageResponse value,
          $Res Function(_DogTrainingPackageResponse) then) =
      __$DogTrainingPackageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "frequency") int? numberOfSessions});
}

/// @nodoc
class __$DogTrainingPackageResponseCopyWithImpl<$Res>
    extends _$DogTrainingPackageResponseCopyWithImpl<$Res>
    implements _$DogTrainingPackageResponseCopyWith<$Res> {
  __$DogTrainingPackageResponseCopyWithImpl(_DogTrainingPackageResponse _value,
      $Res Function(_DogTrainingPackageResponse) _then)
      : super(_value, (v) => _then(v as _DogTrainingPackageResponse));

  @override
  _DogTrainingPackageResponse get _value =>
      super._value as _DogTrainingPackageResponse;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
    Object? numberOfSessions = freezed,
  }) {
    return _then(_DogTrainingPackageResponse(
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
class _$_DogTrainingPackageResponse extends _DogTrainingPackageResponse {
  _$_DogTrainingPackageResponse(
      {@JsonKey(name: "description") this.subscriptionType,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "frequency") this.numberOfSessions})
      : super._();

  factory _$_DogTrainingPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DogTrainingPackageResponseFromJson(json);

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
    return 'DogTrainingPackageResponse(subscriptionType: $subscriptionType, amount: $amount, numberOfSessions: $numberOfSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogTrainingPackageResponse &&
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
  _$DogTrainingPackageResponseCopyWith<_DogTrainingPackageResponse>
      get copyWith => __$DogTrainingPackageResponseCopyWithImpl<
          _DogTrainingPackageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogTrainingPackageResponseToJson(this);
  }
}

abstract class _DogTrainingPackageResponse extends DogTrainingPackageResponse {
  factory _DogTrainingPackageResponse(
          {@JsonKey(name: "description") String? subscriptionType,
          @JsonKey(name: "amount") double? amount,
          @JsonKey(name: "frequency") int? numberOfSessions}) =
      _$_DogTrainingPackageResponse;
  _DogTrainingPackageResponse._() : super._();

  factory _DogTrainingPackageResponse.fromJson(Map<String, dynamic> json) =
      _$_DogTrainingPackageResponse.fromJson;

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
  _$DogTrainingPackageResponseCopyWith<_DogTrainingPackageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogBoardingPackageResponse _$DogBoardingPackageResponseFromJson(
    Map<String, dynamic> json) {
  return _DogBoardingPackageResponse.fromJson(json);
}

/// @nodoc
class _$DogBoardingPackageResponseTearOff {
  const _$DogBoardingPackageResponseTearOff();

  _DogBoardingPackageResponse call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount}) {
    return _DogBoardingPackageResponse(
      subscriptionType: subscriptionType,
      amount: amount,
    );
  }

  DogBoardingPackageResponse fromJson(Map<String, Object?> json) {
    return DogBoardingPackageResponse.fromJson(json);
  }
}

/// @nodoc
const $DogBoardingPackageResponse = _$DogBoardingPackageResponseTearOff();

/// @nodoc
mixin _$DogBoardingPackageResponse {
  @JsonKey(name: "description")
  String? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogBoardingPackageResponseCopyWith<DogBoardingPackageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogBoardingPackageResponseCopyWith<$Res> {
  factory $DogBoardingPackageResponseCopyWith(DogBoardingPackageResponse value,
          $Res Function(DogBoardingPackageResponse) then) =
      _$DogBoardingPackageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount});
}

/// @nodoc
class _$DogBoardingPackageResponseCopyWithImpl<$Res>
    implements $DogBoardingPackageResponseCopyWith<$Res> {
  _$DogBoardingPackageResponseCopyWithImpl(this._value, this._then);

  final DogBoardingPackageResponse _value;
  // ignore: unused_field
  final $Res Function(DogBoardingPackageResponse) _then;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$DogBoardingPackageResponseCopyWith<$Res>
    implements $DogBoardingPackageResponseCopyWith<$Res> {
  factory _$DogBoardingPackageResponseCopyWith(
          _DogBoardingPackageResponse value,
          $Res Function(_DogBoardingPackageResponse) then) =
      __$DogBoardingPackageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount});
}

/// @nodoc
class __$DogBoardingPackageResponseCopyWithImpl<$Res>
    extends _$DogBoardingPackageResponseCopyWithImpl<$Res>
    implements _$DogBoardingPackageResponseCopyWith<$Res> {
  __$DogBoardingPackageResponseCopyWithImpl(_DogBoardingPackageResponse _value,
      $Res Function(_DogBoardingPackageResponse) _then)
      : super(_value, (v) => _then(v as _DogBoardingPackageResponse));

  @override
  _DogBoardingPackageResponse get _value =>
      super._value as _DogBoardingPackageResponse;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
  }) {
    return _then(_DogBoardingPackageResponse(
      subscriptionType: subscriptionType == freezed
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DogBoardingPackageResponse extends _DogBoardingPackageResponse {
  _$_DogBoardingPackageResponse(
      {@JsonKey(name: "description") this.subscriptionType,
      @JsonKey(name: "amount") this.amount})
      : super._();

  factory _$_DogBoardingPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DogBoardingPackageResponseFromJson(json);

  @override
  @JsonKey(name: "description")
  final String? subscriptionType;
  @override
  @JsonKey(name: "amount")
  final double? amount;

  @override
  String toString() {
    return 'DogBoardingPackageResponse(subscriptionType: $subscriptionType, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogBoardingPackageResponse &&
            const DeepCollectionEquality()
                .equals(other.subscriptionType, subscriptionType) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subscriptionType),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$DogBoardingPackageResponseCopyWith<_DogBoardingPackageResponse>
      get copyWith => __$DogBoardingPackageResponseCopyWithImpl<
          _DogBoardingPackageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogBoardingPackageResponseToJson(this);
  }
}

abstract class _DogBoardingPackageResponse extends DogBoardingPackageResponse {
  factory _DogBoardingPackageResponse(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") double? amount}) = _$_DogBoardingPackageResponse;
  _DogBoardingPackageResponse._() : super._();

  factory _DogBoardingPackageResponse.fromJson(Map<String, dynamic> json) =
      _$_DogBoardingPackageResponse.fromJson;

  @override
  @JsonKey(name: "description")
  String? get subscriptionType;
  @override
  @JsonKey(name: "amount")
  double? get amount;
  @override
  @JsonKey(ignore: true)
  _$DogBoardingPackageResponseCopyWith<_DogBoardingPackageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DogRunningPackageResponse _$DogRunningPackageResponseFromJson(
    Map<String, dynamic> json) {
  return _DogRunningPackageResponse.fromJson(json);
}

/// @nodoc
class _$DogRunningPackageResponseTearOff {
  const _$DogRunningPackageResponseTearOff();

  _DogRunningPackageResponse call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes}) {
    return _DogRunningPackageResponse(
      subscriptionType: subscriptionType,
      amount: amount,
      numberOfDays: numberOfDays,
      numberOfTimes: numberOfTimes,
    );
  }

  DogRunningPackageResponse fromJson(Map<String, Object?> json) {
    return DogRunningPackageResponse.fromJson(json);
  }
}

/// @nodoc
const $DogRunningPackageResponse = _$DogRunningPackageResponseTearOff();

/// @nodoc
mixin _$DogRunningPackageResponse {
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
  $DogRunningPackageResponseCopyWith<DogRunningPackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogRunningPackageResponseCopyWith<$Res> {
  factory $DogRunningPackageResponseCopyWith(DogRunningPackageResponse value,
          $Res Function(DogRunningPackageResponse) then) =
      _$DogRunningPackageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes});
}

/// @nodoc
class _$DogRunningPackageResponseCopyWithImpl<$Res>
    implements $DogRunningPackageResponseCopyWith<$Res> {
  _$DogRunningPackageResponseCopyWithImpl(this._value, this._then);

  final DogRunningPackageResponse _value;
  // ignore: unused_field
  final $Res Function(DogRunningPackageResponse) _then;

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
abstract class _$DogRunningPackageResponseCopyWith<$Res>
    implements $DogRunningPackageResponseCopyWith<$Res> {
  factory _$DogRunningPackageResponseCopyWith(_DogRunningPackageResponse value,
          $Res Function(_DogRunningPackageResponse) then) =
      __$DogRunningPackageResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? subscriptionType,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "frequency") int? numberOfDays,
      @JsonKey(name: "dayfrequency") int? numberOfTimes});
}

/// @nodoc
class __$DogRunningPackageResponseCopyWithImpl<$Res>
    extends _$DogRunningPackageResponseCopyWithImpl<$Res>
    implements _$DogRunningPackageResponseCopyWith<$Res> {
  __$DogRunningPackageResponseCopyWithImpl(_DogRunningPackageResponse _value,
      $Res Function(_DogRunningPackageResponse) _then)
      : super(_value, (v) => _then(v as _DogRunningPackageResponse));

  @override
  _DogRunningPackageResponse get _value =>
      super._value as _DogRunningPackageResponse;

  @override
  $Res call({
    Object? subscriptionType = freezed,
    Object? amount = freezed,
    Object? numberOfDays = freezed,
    Object? numberOfTimes = freezed,
  }) {
    return _then(_DogRunningPackageResponse(
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
class _$_DogRunningPackageResponse extends _DogRunningPackageResponse {
  _$_DogRunningPackageResponse(
      {@JsonKey(name: "description") this.subscriptionType,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "frequency") this.numberOfDays,
      @JsonKey(name: "dayfrequency") this.numberOfTimes})
      : super._();

  factory _$_DogRunningPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DogRunningPackageResponseFromJson(json);

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
    return 'DogRunningPackageResponse(subscriptionType: $subscriptionType, amount: $amount, numberOfDays: $numberOfDays, numberOfTimes: $numberOfTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DogRunningPackageResponse &&
            const DeepCollectionEquality()
                .equals(other.subscriptionType, subscriptionType) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDays, numberOfDays) &&
            const DeepCollectionEquality()
                .equals(other.numberOfTimes, numberOfTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subscriptionType),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(numberOfDays),
      const DeepCollectionEquality().hash(numberOfTimes));

  @JsonKey(ignore: true)
  @override
  _$DogRunningPackageResponseCopyWith<_DogRunningPackageResponse>
      get copyWith =>
          __$DogRunningPackageResponseCopyWithImpl<_DogRunningPackageResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DogRunningPackageResponseToJson(this);
  }
}

abstract class _DogRunningPackageResponse extends DogRunningPackageResponse {
  factory _DogRunningPackageResponse(
          {@JsonKey(name: "description") String? subscriptionType,
          @JsonKey(name: "amount") String? amount,
          @JsonKey(name: "frequency") int? numberOfDays,
          @JsonKey(name: "dayfrequency") int? numberOfTimes}) =
      _$_DogRunningPackageResponse;
  _DogRunningPackageResponse._() : super._();

  factory _DogRunningPackageResponse.fromJson(Map<String, dynamic> json) =
      _$_DogRunningPackageResponse.fromJson;

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
  _$DogRunningPackageResponseCopyWith<_DogRunningPackageResponse>
      get copyWith => throw _privateConstructorUsedError;
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
            const DeepCollectionEquality().equals(other.petId, petId) &&
            const DeepCollectionEquality().equals(other.petName, petName) &&
            const DeepCollectionEquality()
                .equals(other.petUserName, petUserName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(petId),
      const DeepCollectionEquality().hash(petName),
      const DeepCollectionEquality().hash(petUserName));

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
