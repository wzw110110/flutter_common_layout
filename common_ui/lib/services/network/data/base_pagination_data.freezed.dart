// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasePaginationData<T> {
  int get curPage => throw _privateConstructorUsedError;
  List<T> get datas => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get over => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Create a copy of BasePaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasePaginationDataCopyWith<T, BasePaginationData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePaginationDataCopyWith<T, $Res> {
  factory $BasePaginationDataCopyWith(BasePaginationData<T> value,
          $Res Function(BasePaginationData<T>) then) =
      _$BasePaginationDataCopyWithImpl<T, $Res, BasePaginationData<T>>;
  @useResult
  $Res call(
      {int curPage,
      List<T> datas,
      int offset,
      bool over,
      int pageCount,
      int size,
      int total});
}

/// @nodoc
class _$BasePaginationDataCopyWithImpl<T, $Res,
        $Val extends BasePaginationData<T>>
    implements $BasePaginationDataCopyWith<T, $Res> {
  _$BasePaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasePaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curPage = null,
    Object? datas = null,
    Object? offset = null,
    Object? over = null,
    Object? pageCount = null,
    Object? size = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      curPage: null == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int,
      datas: null == datas
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<T>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      over: null == over
          ? _value.over
          : over // ignore: cast_nullable_to_non_nullable
              as bool,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasePaginationDatImplCopyWith<T, $Res>
    implements $BasePaginationDataCopyWith<T, $Res> {
  factory _$$BasePaginationDatImplCopyWith(_$BasePaginationDatImpl<T> value,
          $Res Function(_$BasePaginationDatImpl<T>) then) =
      __$$BasePaginationDatImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int curPage,
      List<T> datas,
      int offset,
      bool over,
      int pageCount,
      int size,
      int total});
}

/// @nodoc
class __$$BasePaginationDatImplCopyWithImpl<T, $Res>
    extends _$BasePaginationDataCopyWithImpl<T, $Res,
        _$BasePaginationDatImpl<T>>
    implements _$$BasePaginationDatImplCopyWith<T, $Res> {
  __$$BasePaginationDatImplCopyWithImpl(_$BasePaginationDatImpl<T> _value,
      $Res Function(_$BasePaginationDatImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BasePaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curPage = null,
    Object? datas = null,
    Object? offset = null,
    Object? over = null,
    Object? pageCount = null,
    Object? size = null,
    Object? total = null,
  }) {
    return _then(_$BasePaginationDatImpl<T>(
      curPage: null == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int,
      datas: null == datas
          ? _value._datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<T>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      over: null == over
          ? _value.over
          : over // ignore: cast_nullable_to_non_nullable
              as bool,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BasePaginationDatImpl<T> implements _BasePaginationDat<T> {
  const _$BasePaginationDatImpl(
      {required this.curPage,
      required final List<T> datas,
      required this.offset,
      required this.over,
      required this.pageCount,
      required this.size,
      required this.total})
      : _datas = datas;

  @override
  final int curPage;
  final List<T> _datas;
  @override
  List<T> get datas {
    if (_datas is EqualUnmodifiableListView) return _datas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datas);
  }

  @override
  final int offset;
  @override
  final bool over;
  @override
  final int pageCount;
  @override
  final int size;
  @override
  final int total;

  @override
  String toString() {
    return 'BasePaginationData<$T>(curPage: $curPage, datas: $datas, offset: $offset, over: $over, pageCount: $pageCount, size: $size, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasePaginationDatImpl<T> &&
            (identical(other.curPage, curPage) || other.curPage == curPage) &&
            const DeepCollectionEquality().equals(other._datas, _datas) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.over, over) || other.over == over) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      curPage,
      const DeepCollectionEquality().hash(_datas),
      offset,
      over,
      pageCount,
      size,
      total);

  /// Create a copy of BasePaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasePaginationDatImplCopyWith<T, _$BasePaginationDatImpl<T>>
      get copyWith =>
          __$$BasePaginationDatImplCopyWithImpl<T, _$BasePaginationDatImpl<T>>(
              this, _$identity);
}

abstract class _BasePaginationDat<T> implements BasePaginationData<T> {
  const factory _BasePaginationDat(
      {required final int curPage,
      required final List<T> datas,
      required final int offset,
      required final bool over,
      required final int pageCount,
      required final int size,
      required final int total}) = _$BasePaginationDatImpl<T>;

  @override
  int get curPage;
  @override
  List<T> get datas;
  @override
  int get offset;
  @override
  bool get over;
  @override
  int get pageCount;
  @override
  int get size;
  @override
  int get total;

  /// Create a copy of BasePaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasePaginationDatImplCopyWith<T, _$BasePaginationDatImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
