// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookmarkResponse _$BookmarkResponseFromJson(Map<String, dynamic> json) {
  return _BookmarkResponse.fromJson(json);
}

/// @nodoc
class _$BookmarkResponseTearOff {
  const _$BookmarkResponseTearOff();

  _BookmarkResponse call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "operation") String? operation}) {
    return _BookmarkResponse(
      success: success,
      operation: operation,
    );
  }

  BookmarkResponse fromJson(Map<String, Object?> json) {
    return BookmarkResponse.fromJson(json);
  }
}

/// @nodoc
const $BookmarkResponse = _$BookmarkResponseTearOff();

/// @nodoc
mixin _$BookmarkResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "operation")
  String? get operation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkResponseCopyWith<BookmarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkResponseCopyWith<$Res> {
  factory $BookmarkResponseCopyWith(
          BookmarkResponse value, $Res Function(BookmarkResponse) then) =
      _$BookmarkResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "operation") String? operation});
}

/// @nodoc
class _$BookmarkResponseCopyWithImpl<$Res>
    implements $BookmarkResponseCopyWith<$Res> {
  _$BookmarkResponseCopyWithImpl(this._value, this._then);

  final BookmarkResponse _value;
  // ignore: unused_field
  final $Res Function(BookmarkResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? operation = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookmarkResponseCopyWith<$Res>
    implements $BookmarkResponseCopyWith<$Res> {
  factory _$BookmarkResponseCopyWith(
          _BookmarkResponse value, $Res Function(_BookmarkResponse) then) =
      __$BookmarkResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "operation") String? operation});
}

/// @nodoc
class __$BookmarkResponseCopyWithImpl<$Res>
    extends _$BookmarkResponseCopyWithImpl<$Res>
    implements _$BookmarkResponseCopyWith<$Res> {
  __$BookmarkResponseCopyWithImpl(
      _BookmarkResponse _value, $Res Function(_BookmarkResponse) _then)
      : super(_value, (v) => _then(v as _BookmarkResponse));

  @override
  _BookmarkResponse get _value => super._value as _BookmarkResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? operation = freezed,
  }) {
    return _then(_BookmarkResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      operation: operation == freezed
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarkResponse extends _BookmarkResponse {
  _$_BookmarkResponse(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "operation") this.operation})
      : super._();

  factory _$_BookmarkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "operation")
  final String? operation;

  @override
  String toString() {
    return 'BookmarkResponse(success: $success, operation: $operation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookmarkResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.operation, operation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(operation));

  @JsonKey(ignore: true)
  @override
  _$BookmarkResponseCopyWith<_BookmarkResponse> get copyWith =>
      __$BookmarkResponseCopyWithImpl<_BookmarkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkResponseToJson(this);
  }
}

abstract class _BookmarkResponse extends BookmarkResponse {
  factory _BookmarkResponse(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "operation") String? operation}) = _$_BookmarkResponse;
  _BookmarkResponse._() : super._();

  factory _BookmarkResponse.fromJson(Map<String, dynamic> json) =
      _$_BookmarkResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "operation")
  String? get operation;
  @override
  @JsonKey(ignore: true)
  _$BookmarkResponseCopyWith<_BookmarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
