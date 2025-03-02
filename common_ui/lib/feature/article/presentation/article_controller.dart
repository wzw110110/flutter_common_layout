
import 'package:common_ui/feature/article/data/article_item.dart';
import 'package:common_ui/feature/article/data/article_respository.dart';
import 'package:common_ui/services/network/data/base_pagination_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_controller.g.dart';

@Riverpod(keepAlive: true)
class ArticleController extends _$ArticleController {
  int page = 0;

  @override
  FutureOr<BasePaginationData<ArticleItem>> build(int cid) async {
    print('哈哈哈哈哈哈哈哈哈$cid');
    return _fetch(pageIndex: page,cid: cid);
  }

  Future<BasePaginationData<ArticleItem>> _fetch({int pageIndex = 0,int cid = 0}) async {
    final response = await ref.watch(articleResponsitoryProvider).getArticleList(pageIndex: pageIndex,cid: cid);
    return response.data;
  }
}