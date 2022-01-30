// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_a_run_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookARunResponse _$BookARunResponseFromJson(Map<String, dynamic> json) {
  return _BookARunResponse.fromJson(json);
}

/// @nodoc
class _$BookARunResponseTearOff {
  const _$BookARunResponseTearOff();

  _BookARunResponse call({@JsonKey(name: "bookingId") String? bookingId}) {
    return _BookARunResponse(
      bookingId: bookingId,
    );
  }

  BookARunResponse fromJson(Map<String, Object?> json) {
    return BookARunResponse.fromJson(json);
  }
}

/// @nodoc
const $BookARunResponse = _$BookARunResponseTearOff();

/// @nodoc
mixin _$BookARunResponse {
  @JsonKey(name: "bookingId")
  String? get bookingId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookARunResponseCopyWith<BookARunResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookARunResponseCopyWith<$Res> {
  factory $BookARunResponseCopyWith(
          BookARunResponse value, $Res Function(BookARunResponse) then) =
      _$BookARunResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "bookingId") String? bookingId});
}

/// @nodoc
class _$BookARunResponseCopyWithImpl<$Res>
    implements $BookARunResponseCopyWith<$Res> {
  _$BookARunResponseCopyWithImpl(this._value, this._then);

  final BookARunResponse _value;
  // ignore: unused_field
  final $Res Function(BookARunResponse) _then;

  @override
  $Res call({
    Object? bookingId = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookARunResponseCopyWith<$Res>
    implements $BookARunResponseCopyWith<$Res> {
  factory _$BookARunResponseCopyWith(
          _BookARunResponse value, $Res Function(_BookARunResponse) then) =
      __$BookARunResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "bookingId") String? bookingId});
}

/// @nodoc
class __$BookARunResponseCopyWithImpl<$Res>
    extends _$BookARunResponseCopyWithImpl<$Res>
    implements _$BookARunResponseCopyWith<$Res> {
  __$BookARunResponseCopyWithImpl(
      _BookARunResponse _value, $Res Function(_BookARunResponse) _then)
      : super(_value, (v) => _then(v as _BookARunResponse));

  @override
  _BookARunResponse get _value => super._value as _BookARunResponse;

  @override
  $Res call({
    Object? bookingId = freezed,
  }) {
    return _then(_BookARunResponse(
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookARunResponse extends _BookARunResponse {
  _$_BookARunResponse({@JsonKey(name: "bookingId") this.bookingId}) : super._();

  factory _$_BookARunResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookARunResponseFromJson(json);

  @override
  @JsonKey(name: "bookingId")
  final String? bookingId;

  @override
  String toString() {
    return 'BookARunResponse(bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookARunResponse &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bookingId));

  @JsonKey(ignore: true)
  @override
  _$BookARunResponseCopyWith<_BookARunResponse> get copyWith =>
      __$BookARunResponseCopyWithImpl<_BookARunResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookARunResponseToJson(this);
  }
}

abstract class _BookARunResponse extends BookARunResponse {
  factory _BookARunResponse({@JsonKey(name: "bookingId") String? bookingId}) =
      _$_BookARunResponse;
  _BookARunResponse._() : super._();

  factory _BookARunResponse.fromJson(Map<String, dynamic> json) =
      _$_BookARunResponse.fromJson;

  @override
  @JsonKey(name: "bookingId")
  String? get bookingId;
  @override
  @JsonKey(ignore: true)
  _$BookARunResponseCopyWith<_BookARunResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
