// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  CoinInfo get coinInfo => throw _privateConstructorUsedError;
  UserInfoClass get userInfo => throw _privateConstructorUsedError;

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call({CoinInfo coinInfo, UserInfoClass userInfo});

  $CoinInfoCopyWith<$Res> get coinInfo;
  $UserInfoClassCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinInfo = null,
    Object? userInfo = null,
  }) {
    return _then(_value.copyWith(
      coinInfo: null == coinInfo
          ? _value.coinInfo
          : coinInfo // ignore: cast_nullable_to_non_nullable
              as CoinInfo,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoClass,
    ) as $Val);
  }

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinInfoCopyWith<$Res> get coinInfo {
    return $CoinInfoCopyWith<$Res>(_value.coinInfo, (value) {
      return _then(_value.copyWith(coinInfo: value) as $Val);
    });
  }

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoClassCopyWith<$Res> get userInfo {
    return $UserInfoClassCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinInfo coinInfo, UserInfoClass userInfo});

  @override
  $CoinInfoCopyWith<$Res> get coinInfo;
  @override
  $UserInfoClassCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinInfo = null,
    Object? userInfo = null,
  }) {
    return _then(_$UserInfoImpl(
      coinInfo: null == coinInfo
          ? _value.coinInfo
          : coinInfo // ignore: cast_nullable_to_non_nullable
              as CoinInfo,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoClass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl({required this.coinInfo, required this.userInfo});

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final CoinInfo coinInfo;
  @override
  final UserInfoClass userInfo;

  @override
  String toString() {
    return 'UserInfo(coinInfo: $coinInfo, userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.coinInfo, coinInfo) ||
                other.coinInfo == coinInfo) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coinInfo, userInfo);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {required final CoinInfo coinInfo,
      required final UserInfoClass userInfo}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  CoinInfo get coinInfo;
  @override
  UserInfoClass get userInfo;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinInfo _$CoinInfoFromJson(Map<String, dynamic> json) {
  return _CoinInfo.fromJson(json);
}

/// @nodoc
mixin _$CoinInfo {
  int get coinCount => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get rank => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this CoinInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoinInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinInfoCopyWith<CoinInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinInfoCopyWith<$Res> {
  factory $CoinInfoCopyWith(CoinInfo value, $Res Function(CoinInfo) then) =
      _$CoinInfoCopyWithImpl<$Res, CoinInfo>;
  @useResult
  $Res call(
      {int coinCount,
      int level,
      String nickname,
      String rank,
      int userId,
      String username});
}

/// @nodoc
class _$CoinInfoCopyWithImpl<$Res, $Val extends CoinInfo>
    implements $CoinInfoCopyWith<$Res> {
  _$CoinInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinCount = null,
    Object? level = null,
    Object? nickname = null,
    Object? rank = null,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      coinCount: null == coinCount
          ? _value.coinCount
          : coinCount // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinInfoImplCopyWith<$Res>
    implements $CoinInfoCopyWith<$Res> {
  factory _$$CoinInfoImplCopyWith(
          _$CoinInfoImpl value, $Res Function(_$CoinInfoImpl) then) =
      __$$CoinInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int coinCount,
      int level,
      String nickname,
      String rank,
      int userId,
      String username});
}

/// @nodoc
class __$$CoinInfoImplCopyWithImpl<$Res>
    extends _$CoinInfoCopyWithImpl<$Res, _$CoinInfoImpl>
    implements _$$CoinInfoImplCopyWith<$Res> {
  __$$CoinInfoImplCopyWithImpl(
      _$CoinInfoImpl _value, $Res Function(_$CoinInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinCount = null,
    Object? level = null,
    Object? nickname = null,
    Object? rank = null,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_$CoinInfoImpl(
      coinCount: null == coinCount
          ? _value.coinCount
          : coinCount // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinInfoImpl implements _CoinInfo {
  const _$CoinInfoImpl(
      {required this.coinCount,
      required this.level,
      required this.nickname,
      required this.rank,
      required this.userId,
      required this.username});

  factory _$CoinInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinInfoImplFromJson(json);

  @override
  final int coinCount;
  @override
  final int level;
  @override
  final String nickname;
  @override
  final String rank;
  @override
  final int userId;
  @override
  final String username;

  @override
  String toString() {
    return 'CoinInfo(coinCount: $coinCount, level: $level, nickname: $nickname, rank: $rank, userId: $userId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinInfoImpl &&
            (identical(other.coinCount, coinCount) ||
                other.coinCount == coinCount) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, coinCount, level, nickname, rank, userId, username);

  /// Create a copy of CoinInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinInfoImplCopyWith<_$CoinInfoImpl> get copyWith =>
      __$$CoinInfoImplCopyWithImpl<_$CoinInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinInfoImplToJson(
      this,
    );
  }
}

abstract class _CoinInfo implements CoinInfo {
  const factory _CoinInfo(
      {required final int coinCount,
      required final int level,
      required final String nickname,
      required final String rank,
      required final int userId,
      required final String username}) = _$CoinInfoImpl;

  factory _CoinInfo.fromJson(Map<String, dynamic> json) =
      _$CoinInfoImpl.fromJson;

  @override
  int get coinCount;
  @override
  int get level;
  @override
  String get nickname;
  @override
  String get rank;
  @override
  int get userId;
  @override
  String get username;

  /// Create a copy of CoinInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinInfoImplCopyWith<_$CoinInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoClass _$UserInfoClassFromJson(Map<String, dynamic> json) {
  return _UserInfoClass.fromJson(json);
}

/// @nodoc
mixin _$UserInfoClass {
  bool get admin => throw _privateConstructorUsedError;
  List<dynamic> get chapterTops => throw _privateConstructorUsedError;
  int get coinCount => throw _privateConstructorUsedError;
  List<dynamic> get collectIds => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get publicName => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this UserInfoClass to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoClassCopyWith<UserInfoClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoClassCopyWith<$Res> {
  factory $UserInfoClassCopyWith(
          UserInfoClass value, $Res Function(UserInfoClass) then) =
      _$UserInfoClassCopyWithImpl<$Res, UserInfoClass>;
  @useResult
  $Res call(
      {bool admin,
      List<dynamic> chapterTops,
      int coinCount,
      List<dynamic> collectIds,
      String email,
      String icon,
      int id,
      String nickname,
      String password,
      String publicName,
      String token,
      int type,
      String username});
}

/// @nodoc
class _$UserInfoClassCopyWithImpl<$Res, $Val extends UserInfoClass>
    implements $UserInfoClassCopyWith<$Res> {
  _$UserInfoClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? chapterTops = null,
    Object? coinCount = null,
    Object? collectIds = null,
    Object? email = null,
    Object? icon = null,
    Object? id = null,
    Object? nickname = null,
    Object? password = null,
    Object? publicName = null,
    Object? token = null,
    Object? type = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      chapterTops: null == chapterTops
          ? _value.chapterTops
          : chapterTops // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      coinCount: null == coinCount
          ? _value.coinCount
          : coinCount // ignore: cast_nullable_to_non_nullable
              as int,
      collectIds: null == collectIds
          ? _value.collectIds
          : collectIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      publicName: null == publicName
          ? _value.publicName
          : publicName // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoClassImplCopyWith<$Res>
    implements $UserInfoClassCopyWith<$Res> {
  factory _$$UserInfoClassImplCopyWith(
          _$UserInfoClassImpl value, $Res Function(_$UserInfoClassImpl) then) =
      __$$UserInfoClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool admin,
      List<dynamic> chapterTops,
      int coinCount,
      List<dynamic> collectIds,
      String email,
      String icon,
      int id,
      String nickname,
      String password,
      String publicName,
      String token,
      int type,
      String username});
}

/// @nodoc
class __$$UserInfoClassImplCopyWithImpl<$Res>
    extends _$UserInfoClassCopyWithImpl<$Res, _$UserInfoClassImpl>
    implements _$$UserInfoClassImplCopyWith<$Res> {
  __$$UserInfoClassImplCopyWithImpl(
      _$UserInfoClassImpl _value, $Res Function(_$UserInfoClassImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? chapterTops = null,
    Object? coinCount = null,
    Object? collectIds = null,
    Object? email = null,
    Object? icon = null,
    Object? id = null,
    Object? nickname = null,
    Object? password = null,
    Object? publicName = null,
    Object? token = null,
    Object? type = null,
    Object? username = null,
  }) {
    return _then(_$UserInfoClassImpl(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      chapterTops: null == chapterTops
          ? _value._chapterTops
          : chapterTops // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      coinCount: null == coinCount
          ? _value.coinCount
          : coinCount // ignore: cast_nullable_to_non_nullable
              as int,
      collectIds: null == collectIds
          ? _value._collectIds
          : collectIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      publicName: null == publicName
          ? _value.publicName
          : publicName // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoClassImpl implements _UserInfoClass {
  const _$UserInfoClassImpl(
      {required this.admin,
      required final List<dynamic> chapterTops,
      required this.coinCount,
      required final List<dynamic> collectIds,
      required this.email,
      required this.icon,
      required this.id,
      required this.nickname,
      required this.password,
      required this.publicName,
      required this.token,
      required this.type,
      required this.username})
      : _chapterTops = chapterTops,
        _collectIds = collectIds;

  factory _$UserInfoClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoClassImplFromJson(json);

  @override
  final bool admin;
  final List<dynamic> _chapterTops;
  @override
  List<dynamic> get chapterTops {
    if (_chapterTops is EqualUnmodifiableListView) return _chapterTops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapterTops);
  }

  @override
  final int coinCount;
  final List<dynamic> _collectIds;
  @override
  List<dynamic> get collectIds {
    if (_collectIds is EqualUnmodifiableListView) return _collectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectIds);
  }

  @override
  final String email;
  @override
  final String icon;
  @override
  final int id;
  @override
  final String nickname;
  @override
  final String password;
  @override
  final String publicName;
  @override
  final String token;
  @override
  final int type;
  @override
  final String username;

  @override
  String toString() {
    return 'UserInfoClass(admin: $admin, chapterTops: $chapterTops, coinCount: $coinCount, collectIds: $collectIds, email: $email, icon: $icon, id: $id, nickname: $nickname, password: $password, publicName: $publicName, token: $token, type: $type, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoClassImpl &&
            (identical(other.admin, admin) || other.admin == admin) &&
            const DeepCollectionEquality()
                .equals(other._chapterTops, _chapterTops) &&
            (identical(other.coinCount, coinCount) ||
                other.coinCount == coinCount) &&
            const DeepCollectionEquality()
                .equals(other._collectIds, _collectIds) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.publicName, publicName) ||
                other.publicName == publicName) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      admin,
      const DeepCollectionEquality().hash(_chapterTops),
      coinCount,
      const DeepCollectionEquality().hash(_collectIds),
      email,
      icon,
      id,
      nickname,
      password,
      publicName,
      token,
      type,
      username);

  /// Create a copy of UserInfoClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoClassImplCopyWith<_$UserInfoClassImpl> get copyWith =>
      __$$UserInfoClassImplCopyWithImpl<_$UserInfoClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoClassImplToJson(
      this,
    );
  }
}

abstract class _UserInfoClass implements UserInfoClass {
  const factory _UserInfoClass(
      {required final bool admin,
      required final List<dynamic> chapterTops,
      required final int coinCount,
      required final List<dynamic> collectIds,
      required final String email,
      required final String icon,
      required final int id,
      required final String nickname,
      required final String password,
      required final String publicName,
      required final String token,
      required final int type,
      required final String username}) = _$UserInfoClassImpl;

  factory _UserInfoClass.fromJson(Map<String, dynamic> json) =
      _$UserInfoClassImpl.fromJson;

  @override
  bool get admin;
  @override
  List<dynamic> get chapterTops;
  @override
  int get coinCount;
  @override
  List<dynamic> get collectIds;
  @override
  String get email;
  @override
  String get icon;
  @override
  int get id;
  @override
  String get nickname;
  @override
  String get password;
  @override
  String get publicName;
  @override
  String get token;
  @override
  int get type;
  @override
  String get username;

  /// Create a copy of UserInfoClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoClassImplCopyWith<_$UserInfoClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
