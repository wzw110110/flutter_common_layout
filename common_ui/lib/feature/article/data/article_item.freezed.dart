// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleItem _$ArticleItemFromJson(Map<String, dynamic> json) {
  return _ArticleItem.fromJson(json);
}

/// @nodoc
mixin _$ArticleItem {
  String get link => throw _privateConstructorUsedError;
  String get shareUser => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ArticleItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleItemCopyWith<ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleItemCopyWith<$Res> {
  factory $ArticleItemCopyWith(
          ArticleItem value, $Res Function(ArticleItem) then) =
      _$ArticleItemCopyWithImpl<$Res, ArticleItem>;
  @useResult
  $Res call({String link, String shareUser, String title});
}

/// @nodoc
class _$ArticleItemCopyWithImpl<$Res, $Val extends ArticleItem>
    implements $ArticleItemCopyWith<$Res> {
  _$ArticleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? shareUser = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      shareUser: null == shareUser
          ? _value.shareUser
          : shareUser // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleItemImplCopyWith<$Res>
    implements $ArticleItemCopyWith<$Res> {
  factory _$$ArticleItemImplCopyWith(
          _$ArticleItemImpl value, $Res Function(_$ArticleItemImpl) then) =
      __$$ArticleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link, String shareUser, String title});
}

/// @nodoc
class __$$ArticleItemImplCopyWithImpl<$Res>
    extends _$ArticleItemCopyWithImpl<$Res, _$ArticleItemImpl>
    implements _$$ArticleItemImplCopyWith<$Res> {
  __$$ArticleItemImplCopyWithImpl(
      _$ArticleItemImpl _value, $Res Function(_$ArticleItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? shareUser = null,
    Object? title = null,
  }) {
    return _then(_$ArticleItemImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      shareUser: null == shareUser
          ? _value.shareUser
          : shareUser // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleItemImpl implements _ArticleItem {
  const _$ArticleItemImpl(
      {required this.link, required this.shareUser, required this.title});

  factory _$ArticleItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleItemImplFromJson(json);

  @override
  final String link;
  @override
  final String shareUser;
  @override
  final String title;

  @override
  String toString() {
    return 'ArticleItem(link: $link, shareUser: $shareUser, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleItemImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.shareUser, shareUser) ||
                other.shareUser == shareUser) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, link, shareUser, title);

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleItemImplCopyWith<_$ArticleItemImpl> get copyWith =>
      __$$ArticleItemImplCopyWithImpl<_$ArticleItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleItemImplToJson(
      this,
    );
  }
}

abstract class _ArticleItem implements ArticleItem {
  const factory _ArticleItem(
      {required final String link,
      required final String shareUser,
      required final String title}) = _$ArticleItemImpl;

  factory _ArticleItem.fromJson(Map<String, dynamic> json) =
      _$ArticleItemImpl.fromJson;

  @override
  String get link;
  @override
  String get shareUser;
  @override
  String get title;

  /// Create a copy of ArticleItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleItemImplCopyWith<_$ArticleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
