
import 'package:common_ui/feature/home/data/home_article_list_item.dart';
import 'package:common_ui/feature/home/data/home_respository.dart';
import 'package:common_ui/services/network/data/base_pagination_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {
  @override
  FutureOr<BasePaginationData<HomeArticleListItem>> build() async {
    return _fetch();
  }

  ///首页文章列表
  Future<BasePaginationData<HomeArticleListItem>> _fetch({int pageIndex = 0}) async {
    final reponse = await ref.watch(homeRepositoryProvider).getArticlePaginationList(pageIndex:pageIndex);
    return reponse.data;
  }
}