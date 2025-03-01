import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_hot_key_item.freezed.dart';
part 'project_hot_key_item.g.dart';

@freezed
class ProjectHotKeyItem with _$ProjectHotKeyItem {
  const factory ProjectHotKeyItem({
    required int id,
    required String link,
    required String name,
    required int order,
    required int visible,
  }) = _ProjectHotKeyItem;

  factory ProjectHotKeyItem.fromJson(Map<String,dynamic> json) => _$ProjectHotKeyItemFromJson(json);
}
