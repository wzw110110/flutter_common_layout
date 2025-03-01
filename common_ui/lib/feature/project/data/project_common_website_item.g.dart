// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_common_website_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectCommonWebsitItemImpl _$$ProjectCommonWebsitItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectCommonWebsitItemImpl(
      category: json['category'] as String,
      icon: json['icon'] as String,
      id: (json['id'] as num).toInt(),
      link: json['link'] as String,
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      visible: (json['visible'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectCommonWebsitItemImplToJson(
        _$ProjectCommonWebsitItemImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'icon': instance.icon,
      'id': instance.id,
      'link': instance.link,
      'name': instance.name,
      'order': instance.order,
      'visible': instance.visible,
    };
