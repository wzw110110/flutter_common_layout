// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiBaseResponse<T> {
  T get data => throw _privateConstructorUsedError;
  int get errorCode => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiBaseResponseCopyWith<T, ApiBaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBaseResponseCopyWith<T, $Res> {
  factory $ApiBaseResponseCopyWith(
          ApiBaseResponse<T> value, $Res Function(ApiBaseResponse<T>) then) =
      _$ApiBaseResponseCopyWithImpl<T, $Res, ApiBaseResponse<T>>;
  @useResult
  $Res call({T data, int errorCode, String errorMsg});
}

/// @nodoc
class _$ApiBaseResponseCopyWithImpl<T, $Res, $Val extends ApiBaseResponse<T>>
    implements $ApiBaseResponseCopyWith<T, $Res> {
  _$ApiBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = null,
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiBaseResponseImplCopyWith<T, $Res>
    implements $ApiBaseResponseCopyWith<T, $Res> {
  factory _$$ApiBaseResponseImplCopyWith(_$ApiBaseResponseImpl<T> value,
          $Res Function(_$ApiBaseResponseImpl<T>) then) =
      __$$ApiBaseResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, int errorCode, String errorMsg});
}

/// @nodoc
class __$$ApiBaseResponseImplCopyWithImpl<T, $Res>
    extends _$ApiBaseResponseCopyWithImpl<T, $Res, _$ApiBaseResponseImpl<T>>
    implements _$$ApiBaseResponseImplCopyWith<T, $Res> {
  __$$ApiBaseResponseImplCopyWithImpl(_$ApiBaseResponseImpl<T> _value,
      $Res Function(_$ApiBaseResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorCode = null,
    Object? errorMsg = null,
  }) {
    return _then(_$ApiBaseResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiBaseResponseImpl<T> implements _ApiBaseResponse<T> {
  const _$ApiBaseResponseImpl(
      {required this.data, required this.errorCode, required this.errorMsg});

  @override
  final T data;
  @override
  final int errorCode;
  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ApiBaseResponse<$T>(data: $data, errorCode: $errorCode, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiBaseResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), errorCode, errorMsg);

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiBaseResponseImplCopyWith<T, _$ApiBaseResponseImpl<T>> get copyWith =>
      __$$ApiBaseResponseImplCopyWithImpl<T, _$ApiBaseResponseImpl<T>>(
          this, _$identity);
}

abstract class _ApiBaseResponse<T> implements ApiBaseResponse<T> {
  const factory _ApiBaseResponse(
      {required final T data,
      required final int errorCode,
      required final String errorMsg}) = _$ApiBaseResponseImpl<T>;

  @override
  T get data;
  @override
  int get errorCode;
  @override
  String get errorMsg;

  /// Create a copy of ApiBaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiBaseResponseImplCopyWith<T, _$ApiBaseResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
