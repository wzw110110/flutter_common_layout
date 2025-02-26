// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeBannerItemImpl _$$HomeBannerItemImplFromJson(Map<String, dynamic> json) =>
    _$HomeBannerItemImpl(
      desc: json['desc'] as String,
      id: (json['id'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      isVisible: (json['isVisible'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      title: json['title'] as String,
      type: (json['type'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$HomeBannerItemImplToJson(
        _$HomeBannerItemImpl instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isVisible': instance.isVisible,
      'order': instance.order,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };
