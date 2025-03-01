// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_hot_key_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectHotKeyItemImpl _$$ProjectHotKeyItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectHotKeyItemImpl(
      id: (json['id'] as num).toInt(),
      link: json['link'] as String,
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      visible: (json['visible'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectHotKeyItemImplToJson(
        _$ProjectHotKeyItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'name': instance.name,
      'order': instance.order,
      'visible': instance.visible,
    };
