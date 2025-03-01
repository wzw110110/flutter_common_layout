
import 'package:freezed_annotation/freezed_annotation.dart';

part 'square_tree_item.freezed.dart';
part 'square_tree_item.g.dart';

@freezed
class SquareTreeItem with _$SquareTreeItem {
  const factory SquareTreeItem({
    required List<dynamic> articleList,
    required String author,
    required List<SquareTreeItem> children,
    required int courseId,
    required String cover,
    required String desc,
    required int id,
    required String lisense,
    required String lisenseLink,
    required String name,
    required int order,
    required int parentChapterId,
    required int type,
    required bool userControlSetTop,
    required int visible,
  }) = _SquareTreeItem;

  factory SquareTreeItem.fromJson(Map<String,dynamic> json) => _$SquareTreeItemFromJson(json);
}
