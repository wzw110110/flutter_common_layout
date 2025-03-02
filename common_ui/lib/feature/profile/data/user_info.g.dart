// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      coinInfo: CoinInfo.fromJson(json['coinInfo'] as Map<String, dynamic>),
      userInfo:
          UserInfoClass.fromJson(json['userInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'coinInfo': instance.coinInfo,
      'userInfo': instance.userInfo,
    };

_$CoinInfoImpl _$$CoinInfoImplFromJson(Map<String, dynamic> json) =>
    _$CoinInfoImpl(
      coinCount: (json['coinCount'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      nickname: json['nickname'] as String,
      rank: json['rank'] as String,
      userId: (json['userId'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$CoinInfoImplToJson(_$CoinInfoImpl instance) =>
    <String, dynamic>{
      'coinCount': instance.coinCount,
      'level': instance.level,
      'nickname': instance.nickname,
      'rank': instance.rank,
      'userId': instance.userId,
      'username': instance.username,
    };

_$UserInfoClassImpl _$$UserInfoClassImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoClassImpl(
      admin: json['admin'] as bool,
      chapterTops: json['chapterTops'] as List<dynamic>,
      coinCount: (json['coinCount'] as num).toInt(),
      collectIds: json['collectIds'] as List<dynamic>,
      email: json['email'] as String,
      icon: json['icon'] as String,
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      password: json['password'] as String,
      publicName: json['publicName'] as String,
      token: json['token'] as String,
      type: (json['type'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$UserInfoClassImplToJson(_$UserInfoClassImpl instance) =>
    <String, dynamic>{
      'admin': instance.admin,
      'chapterTops': instance.chapterTops,
      'coinCount': instance.coinCount,
      'collectIds': instance.collectIds,
      'email': instance.email,
      'icon': instance.icon,
      'id': instance.id,
      'nickname': instance.nickname,
      'password': instance.password,
      'publicName': instance.publicName,
      'token': instance.token,
      'type': instance.type,
      'username': instance.username,
    };
