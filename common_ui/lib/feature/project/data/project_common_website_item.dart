import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_common_website_item.freezed.dart';
part 'project_common_website_item.g.dart';

@freezed
class ProjectCommonWebsitItem with _$ProjectCommonWebsitItem {
  const factory ProjectCommonWebsitItem({
    required String category,
    required String icon,
    required int id,
    required String link,
    required String name,
    required int order,
    required int visible,
  }) = _ProjectCommonWebsitItem;

  factory ProjectCommonWebsitItem.fromJson(Map<String,dynamic> json) => _$ProjectCommonWebsitItemFromJson(json);
}
