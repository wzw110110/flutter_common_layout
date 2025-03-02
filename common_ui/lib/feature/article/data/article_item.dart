import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_item.freezed.dart';
part 'article_item.g.dart';

@freezed
class ArticleItem with _$ArticleItem {
  const factory ArticleItem({
    required String link,
    required String shareUser,
    required String title,
  }) = _ArticleItem;

  factory ArticleItem.fromJson(Map<String,dynamic> json) => _$ArticleItemFromJson(json);
}
