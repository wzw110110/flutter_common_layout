// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_hot_key_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectHotKeyItem _$ProjectHotKeyItemFromJson(Map<String, dynamic> json) {
  return _ProjectHotKeyItem.fromJson(json);
}

/// @nodoc
mixin _$ProjectHotKeyItem {
  int get id => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get visible => throw _privateConstructorUsedError;

  /// Serializes this ProjectHotKeyItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectHotKeyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectHotKeyItemCopyWith<ProjectHotKeyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectHotKeyItemCopyWith<$Res> {
  factory $ProjectHotKeyItemCopyWith(
          ProjectHotKeyItem value, $Res Function(ProjectHotKeyItem) then) =
      _$ProjectHotKeyItemCopyWithImpl<$Res, ProjectHotKeyItem>;
  @useResult
  $Res call({int id, String link, String name, int order, int visible});
}

/// @nodoc
class _$ProjectHotKeyItemCopyWithImpl<$Res, $Val extends ProjectHotKeyItem>
    implements $ProjectHotKeyItemCopyWith<$Res> {
  _$ProjectHotKeyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectHotKeyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? link = null,
    Object? name = null,
    Object? order = null,
    Object? visible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectHotKeyItemImplCopyWith<$Res>
    implements $ProjectHotKeyItemCopyWith<$Res> {
  factory _$$ProjectHotKeyItemImplCopyWith(_$ProjectHotKeyItemImpl value,
          $Res Function(_$ProjectHotKeyItemImpl) then) =
      __$$ProjectHotKeyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String link, String name, int order, int visible});
}

/// @nodoc
class __$$ProjectHotKeyItemImplCopyWithImpl<$Res>
    extends _$ProjectHotKeyItemCopyWithImpl<$Res, _$ProjectHotKeyItemImpl>
    implements _$$ProjectHotKeyItemImplCopyWith<$Res> {
  __$$ProjectHotKeyItemImplCopyWithImpl(_$ProjectHotKeyItemImpl _value,
      $Res Function(_$ProjectHotKeyItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectHotKeyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? link = null,
    Object? name = null,
    Object? order = null,
    Object? visible = null,
  }) {
    return _then(_$ProjectHotKeyItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectHotKeyItemImpl implements _ProjectHotKeyItem {
  const _$ProjectHotKeyItemImpl(
      {required this.id,
      required this.link,
      required this.name,
      required this.order,
      required this.visible});

  factory _$ProjectHotKeyItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectHotKeyItemImplFromJson(json);

  @override
  final int id;
  @override
  final String link;
  @override
  final String name;
  @override
  final int order;
  @override
  final int visible;

  @override
  String toString() {
    return 'ProjectHotKeyItem(id: $id, link: $link, name: $name, order: $order, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectHotKeyItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, link, name, order, visible);

  /// Create a copy of ProjectHotKeyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectHotKeyItemImplCopyWith<_$ProjectHotKeyItemImpl> get copyWith =>
      __$$ProjectHotKeyItemImplCopyWithImpl<_$ProjectHotKeyItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectHotKeyItemImplToJson(
      this,
    );
  }
}

abstract class _ProjectHotKeyItem implements ProjectHotKeyItem {
  const factory _ProjectHotKeyItem(
      {required final int id,
      required final String link,
      required final String name,
      required final int order,
      required final int visible}) = _$ProjectHotKeyItemImpl;

  factory _ProjectHotKeyItem.fromJson(Map<String, dynamic> json) =
      _$ProjectHotKeyItemImpl.fromJson;

  @override
  int get id;
  @override
  String get link;
  @override
  String get name;
  @override
  int get order;
  @override
  int get visible;

  /// Create a copy of ProjectHotKeyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectHotKeyItemImplCopyWith<_$ProjectHotKeyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
