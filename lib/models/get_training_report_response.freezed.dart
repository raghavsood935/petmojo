// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_training_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTrainingReportResponse _$GetTrainingReportResponseFromJson(
    Map<String, dynamic> json) {
  return _GetTrainingReportResponse.fromJson(json);
}

/// @nodoc
class _$GetTrainingReportResponseTearOff {
  const _$GetTrainingReportResponseTearOff();

  _GetTrainingReportResponse call(
      {@JsonKey(name: "resp") GetTrainingReportDetailsResponse? details,
      @JsonKey(name: "petNames") List<GetPetNamesResponse>? pet}) {
    return _GetTrainingReportResponse(
      details: details,
      pet: pet,
    );
  }

  GetTrainingReportResponse fromJson(Map<String, Object?> json) {
    return GetTrainingReportResponse.fromJson(json);
  }
}

/// @nodoc
const $GetTrainingReportResponse = _$GetTrainingReportResponseTearOff();

/// @nodoc
mixin _$GetTrainingReportResponse {
  @JsonKey(name: "resp")
  GetTrainingReportDetailsResponse? get details =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "petNames")
  List<GetPetNamesResponse>? get pet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTrainingReportResponseCopyWith<GetTrainingReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrainingReportResponseCopyWith<$Res> {
  factory $GetTrainingReportResponseCopyWith(GetTrainingReportResponse value,
          $Res Function(GetTrainingReportResponse) then) =
      _$GetTrainingReportResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "resp") GetTrainingReportDetailsResponse? details,
      @JsonKey(name: "petNames") List<GetPetNamesResponse>? pet});

  $GetTrainingReportDetailsResponseCopyWith<$Res>? get details;
}

/// @nodoc
class _$GetTrainingReportResponseCopyWithImpl<$Res>
    implements $GetTrainingReportResponseCopyWith<$Res> {
  _$GetTrainingReportResponseCopyWithImpl(this._value, this._then);

  final GetTrainingReportResponse _value;
  // ignore: unused_field
  final $Res Function(GetTrainingReportResponse) _then;

  @override
  $Res call({
    Object? details = freezed,
    Object? pet = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as GetTrainingReportDetailsResponse?,
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as List<GetPetNamesResponse>?,
    ));
  }

  @override
  $GetTrainingReportDetailsResponseCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $GetTrainingReportDetailsResponseCopyWith<$Res>(_value.details!,
        (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$GetTrainingReportResponseCopyWith<$Res>
    implements $GetTrainingReportResponseCopyWith<$Res> {
  factory _$GetTrainingReportResponseCopyWith(_GetTrainingReportResponse value,
          $Res Function(_GetTrainingReportResponse) then) =
      __$GetTrainingReportResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "resp") GetTrainingReportDetailsResponse? details,
      @JsonKey(name: "petNames") List<GetPetNamesResponse>? pet});

  @override
  $GetTrainingReportDetailsResponseCopyWith<$Res>? get details;
}

/// @nodoc
class __$GetTrainingReportResponseCopyWithImpl<$Res>
    extends _$GetTrainingReportResponseCopyWithImpl<$Res>
    implements _$GetTrainingReportResponseCopyWith<$Res> {
  __$GetTrainingReportResponseCopyWithImpl(_GetTrainingReportResponse _value,
      $Res Function(_GetTrainingReportResponse) _then)
      : super(_value, (v) => _then(v as _GetTrainingReportResponse));

  @override
  _GetTrainingReportResponse get _value =>
      super._value as _GetTrainingReportResponse;

  @override
  $Res call({
    Object? details = freezed,
    Object? pet = freezed,
  }) {
    return _then(_GetTrainingReportResponse(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as GetTrainingReportDetailsResponse?,
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as List<GetPetNamesResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetTrainingReportResponse extends _GetTrainingReportResponse {
  _$_GetTrainingReportResponse(
      {@JsonKey(name: "resp") this.details,
      @JsonKey(name: "petNames") this.pet})
      : super._();

  factory _$_GetTrainingReportResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetTrainingReportResponseFromJson(json);

  @override
  @JsonKey(name: "resp")
  final GetTrainingReportDetailsResponse? details;
  @override
  @JsonKey(name: "petNames")
  final List<GetPetNamesResponse>? pet;

  @override
  String toString() {
    return 'GetTrainingReportResponse(details: $details, pet: $pet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTrainingReportResponse &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.pet, pet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(pet));

  @JsonKey(ignore: true)
  @override
  _$GetTrainingReportResponseCopyWith<_GetTrainingReportResponse>
      get copyWith =>
          __$GetTrainingReportResponseCopyWithImpl<_GetTrainingReportResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTrainingReportResponseToJson(this);
  }
}

abstract class _GetTrainingReportResponse extends GetTrainingReportResponse {
  factory _GetTrainingReportResponse(
          {@JsonKey(name: "resp") GetTrainingReportDetailsResponse? details,
          @JsonKey(name: "petNames") List<GetPetNamesResponse>? pet}) =
      _$_GetTrainingReportResponse;
  _GetTrainingReportResponse._() : super._();

  factory _GetTrainingReportResponse.fromJson(Map<String, dynamic> json) =
      _$_GetTrainingReportResponse.fromJson;

  @override
  @JsonKey(name: "resp")
  GetTrainingReportDetailsResponse? get details;
  @override
  @JsonKey(name: "petNames")
  List<GetPetNamesResponse>? get pet;
  @override
  @JsonKey(ignore: true)
  _$GetTrainingReportResponseCopyWith<_GetTrainingReportResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetTrainingReportDetailsResponse _$GetTrainingReportDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetTrainingReportDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetTrainingReportDetailsResponseTearOff {
  const _$GetTrainingReportDetailsResponseTearOff();

  _GetTrainingReportDetailsResponse call(
      {@JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "time") int? duration,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "createdAt") int? time,
      @JsonKey(name: "startTime") int? startTime,
      @JsonKey(name: "endTime") int? endTime,
      @JsonKey(name: "trainerName") String? trainerName,
      @JsonKey(name: "agenda") String? agenda}) {
    return _GetTrainingReportDetailsResponse(
      sessionNo: sessionNo,
      rating: rating,
      duration: duration,
      picture: picture,
      video: video,
      time: time,
      startTime: startTime,
      endTime: endTime,
      trainerName: trainerName,
      agenda: agenda,
    );
  }

  GetTrainingReportDetailsResponse fromJson(Map<String, Object?> json) {
    return GetTrainingReportDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetTrainingReportDetailsResponse =
    _$GetTrainingReportDetailsResponseTearOff();

/// @nodoc
mixin _$GetTrainingReportDetailsResponse {
  @JsonKey(name: "sessionNo")
  int? get sessionNo => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "picture")
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  String? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  int? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "startTime")
  int? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "endTime")
  int? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: "trainerName")
  String? get trainerName => throw _privateConstructorUsedError;
  @JsonKey(name: "agenda")
  String? get agenda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTrainingReportDetailsResponseCopyWith<GetTrainingReportDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrainingReportDetailsResponseCopyWith<$Res> {
  factory $GetTrainingReportDetailsResponseCopyWith(
          GetTrainingReportDetailsResponse value,
          $Res Function(GetTrainingReportDetailsResponse) then) =
      _$GetTrainingReportDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "time") int? duration,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "createdAt") int? time,
      @JsonKey(name: "startTime") int? startTime,
      @JsonKey(name: "endTime") int? endTime,
      @JsonKey(name: "trainerName") String? trainerName,
      @JsonKey(name: "agenda") String? agenda});
}

/// @nodoc
class _$GetTrainingReportDetailsResponseCopyWithImpl<$Res>
    implements $GetTrainingReportDetailsResponseCopyWith<$Res> {
  _$GetTrainingReportDetailsResponseCopyWithImpl(this._value, this._then);

  final GetTrainingReportDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetTrainingReportDetailsResponse) _then;

  @override
  $Res call({
    Object? sessionNo = freezed,
    Object? rating = freezed,
    Object? duration = freezed,
    Object? picture = freezed,
    Object? video = freezed,
    Object? time = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? trainerName = freezed,
    Object? agenda = freezed,
  }) {
    return _then(_value.copyWith(
      sessionNo: sessionNo == freezed
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int?,
      trainerName: trainerName == freezed
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String?,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetTrainingReportDetailsResponseCopyWith<$Res>
    implements $GetTrainingReportDetailsResponseCopyWith<$Res> {
  factory _$GetTrainingReportDetailsResponseCopyWith(
          _GetTrainingReportDetailsResponse value,
          $Res Function(_GetTrainingReportDetailsResponse) then) =
      __$GetTrainingReportDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "time") int? duration,
      @JsonKey(name: "picture") String? picture,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "createdAt") int? time,
      @JsonKey(name: "startTime") int? startTime,
      @JsonKey(name: "endTime") int? endTime,
      @JsonKey(name: "trainerName") String? trainerName,
      @JsonKey(name: "agenda") String? agenda});
}

/// @nodoc
class __$GetTrainingReportDetailsResponseCopyWithImpl<$Res>
    extends _$GetTrainingReportDetailsResponseCopyWithImpl<$Res>
    implements _$GetTrainingReportDetailsResponseCopyWith<$Res> {
  __$GetTrainingReportDetailsResponseCopyWithImpl(
      _GetTrainingReportDetailsResponse _value,
      $Res Function(_GetTrainingReportDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetTrainingReportDetailsResponse));

  @override
  _GetTrainingReportDetailsResponse get _value =>
      super._value as _GetTrainingReportDetailsResponse;

  @override
  $Res call({
    Object? sessionNo = freezed,
    Object? rating = freezed,
    Object? duration = freezed,
    Object? picture = freezed,
    Object? video = freezed,
    Object? time = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? trainerName = freezed,
    Object? agenda = freezed,
  }) {
    return _then(_GetTrainingReportDetailsResponse(
      sessionNo: sessionNo == freezed
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int?,
      trainerName: trainerName == freezed
          ? _value.trainerName
          : trainerName // ignore: cast_nullable_to_non_nullable
              as String?,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetTrainingReportDetailsResponse
    extends _GetTrainingReportDetailsResponse {
  _$_GetTrainingReportDetailsResponse(
      {@JsonKey(name: "sessionNo") this.sessionNo,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "time") this.duration,
      @JsonKey(name: "picture") this.picture,
      @JsonKey(name: "video") this.video,
      @JsonKey(name: "createdAt") this.time,
      @JsonKey(name: "startTime") this.startTime,
      @JsonKey(name: "endTime") this.endTime,
      @JsonKey(name: "trainerName") this.trainerName,
      @JsonKey(name: "agenda") this.agenda})
      : super._();

  factory _$_GetTrainingReportDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetTrainingReportDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "sessionNo")
  final int? sessionNo;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "time")
  final int? duration;
  @override
  @JsonKey(name: "picture")
  final String? picture;
  @override
  @JsonKey(name: "video")
  final String? video;
  @override
  @JsonKey(name: "createdAt")
  final int? time;
  @override
  @JsonKey(name: "startTime")
  final int? startTime;
  @override
  @JsonKey(name: "endTime")
  final int? endTime;
  @override
  @JsonKey(name: "trainerName")
  final String? trainerName;
  @override
  @JsonKey(name: "agenda")
  final String? agenda;

  @override
  String toString() {
    return 'GetTrainingReportDetailsResponse(sessionNo: $sessionNo, rating: $rating, duration: $duration, picture: $picture, video: $video, time: $time, startTime: $startTime, endTime: $endTime, trainerName: $trainerName, agenda: $agenda)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTrainingReportDetailsResponse &&
            const DeepCollectionEquality().equals(other.sessionNo, sessionNo) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.trainerName, trainerName) &&
            const DeepCollectionEquality().equals(other.agenda, agenda));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionNo),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(trainerName),
      const DeepCollectionEquality().hash(agenda));

  @JsonKey(ignore: true)
  @override
  _$GetTrainingReportDetailsResponseCopyWith<_GetTrainingReportDetailsResponse>
      get copyWith => __$GetTrainingReportDetailsResponseCopyWithImpl<
          _GetTrainingReportDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTrainingReportDetailsResponseToJson(this);
  }
}

abstract class _GetTrainingReportDetailsResponse
    extends GetTrainingReportDetailsResponse {
  factory _GetTrainingReportDetailsResponse(
          {@JsonKey(name: "sessionNo") int? sessionNo,
          @JsonKey(name: "rating") int? rating,
          @JsonKey(name: "time") int? duration,
          @JsonKey(name: "picture") String? picture,
          @JsonKey(name: "video") String? video,
          @JsonKey(name: "createdAt") int? time,
          @JsonKey(name: "startTime") int? startTime,
          @JsonKey(name: "endTime") int? endTime,
          @JsonKey(name: "trainerName") String? trainerName,
          @JsonKey(name: "agenda") String? agenda}) =
      _$_GetTrainingReportDetailsResponse;
  _GetTrainingReportDetailsResponse._() : super._();

  factory _GetTrainingReportDetailsResponse.fromJson(
      Map<String, dynamic> json) = _$_GetTrainingReportDetailsResponse.fromJson;

  @override
  @JsonKey(name: "sessionNo")
  int? get sessionNo;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "time")
  int? get duration;
  @override
  @JsonKey(name: "picture")
  String? get picture;
  @override
  @JsonKey(name: "video")
  String? get video;
  @override
  @JsonKey(name: "createdAt")
  int? get time;
  @override
  @JsonKey(name: "startTime")
  int? get startTime;
  @override
  @JsonKey(name: "endTime")
  int? get endTime;
  @override
  @JsonKey(name: "trainerName")
  String? get trainerName;
  @override
  @JsonKey(name: "agenda")
  String? get agenda;
  @override
  @JsonKey(ignore: true)
  _$GetTrainingReportDetailsResponseCopyWith<_GetTrainingReportDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetPetNamesResponse _$GetPetNamesResponseFromJson(Map<String, dynamic> json) {
  return _GetPetNamesResponse.fromJson(json);
}

/// @nodoc
class _$GetPetNamesResponseTearOff {
  const _$GetPetNamesResponseTearOff();

  _GetPetNamesResponse call({@JsonKey(name: "name") String? name}) {
    return _GetPetNamesResponse(
      name: name,
    );
  }

  GetPetNamesResponse fromJson(Map<String, Object?> json) {
    return GetPetNamesResponse.fromJson(json);
  }
}

/// @nodoc
const $GetPetNamesResponse = _$GetPetNamesResponseTearOff();

/// @nodoc
mixin _$GetPetNamesResponse {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPetNamesResponseCopyWith<GetPetNamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPetNamesResponseCopyWith<$Res> {
  factory $GetPetNamesResponseCopyWith(
          GetPetNamesResponse value, $Res Function(GetPetNamesResponse) then) =
      _$GetPetNamesResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class _$GetPetNamesResponseCopyWithImpl<$Res>
    implements $GetPetNamesResponseCopyWith<$Res> {
  _$GetPetNamesResponseCopyWithImpl(this._value, this._then);

  final GetPetNamesResponse _value;
  // ignore: unused_field
  final $Res Function(GetPetNamesResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetPetNamesResponseCopyWith<$Res>
    implements $GetPetNamesResponseCopyWith<$Res> {
  factory _$GetPetNamesResponseCopyWith(_GetPetNamesResponse value,
          $Res Function(_GetPetNamesResponse) then) =
      __$GetPetNamesResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class __$GetPetNamesResponseCopyWithImpl<$Res>
    extends _$GetPetNamesResponseCopyWithImpl<$Res>
    implements _$GetPetNamesResponseCopyWith<$Res> {
  __$GetPetNamesResponseCopyWithImpl(
      _GetPetNamesResponse _value, $Res Function(_GetPetNamesResponse) _then)
      : super(_value, (v) => _then(v as _GetPetNamesResponse));

  @override
  _GetPetNamesResponse get _value => super._value as _GetPetNamesResponse;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_GetPetNamesResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPetNamesResponse extends _GetPetNamesResponse {
  _$_GetPetNamesResponse({@JsonKey(name: "name") this.name}) : super._();

  factory _$_GetPetNamesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetPetNamesResponseFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'GetPetNamesResponse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPetNamesResponse &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GetPetNamesResponseCopyWith<_GetPetNamesResponse> get copyWith =>
      __$GetPetNamesResponseCopyWithImpl<_GetPetNamesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPetNamesResponseToJson(this);
  }
}

abstract class _GetPetNamesResponse extends GetPetNamesResponse {
  factory _GetPetNamesResponse({@JsonKey(name: "name") String? name}) =
      _$_GetPetNamesResponse;
  _GetPetNamesResponse._() : super._();

  factory _GetPetNamesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPetNamesResponse.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$GetPetNamesResponseCopyWith<_GetPetNamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
