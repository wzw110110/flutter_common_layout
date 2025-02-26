
import 'package:common_ui/feature/home/data/home_article_list_item.dart';
import 'package:common_ui/feature/home/data/home_banner_item.dart';
import 'package:common_ui/feature/home/data/home_respository.dart';
import 'package:common_ui/services/network/data/base_pagination_data.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {

  int page = 0;

  @override
  FutureOr<BasePaginationData<HomeArticleListItem>> build() async {
    return _fetch();
  }

  ///首页文章列表
  Future<BasePaginationData<HomeArticleListItem>> _fetch({int pageIndex = 0}) async {
    final response = await ref.watch(homeRepositoryProvider).getArticlePaginationList(pageIndex:pageIndex);
    return response.data;
  }

  Future<IndicatorResult> onRefresh() async {
    if (state.isLoading) {
      return IndicatorResult.none;
    }

    try {
      page = 0;
      final result = await _fetch(pageIndex: page);
      state = AsyncValue.data(result);
      return IndicatorResult.success;
    } catch (error, stackTrace) {
      state = AsyncValue<BasePaginationData<HomeArticleListItem>>.error(error,stackTrace).copyWithPrevious(state);
      return IndicatorResult.fail;
    }
  }

  Future<IndicatorResult> onLoad()  async {
    if (state.isLoading) {
      return IndicatorResult.none;
    }
    try {
      page++;
      final result = await _fetch(pageIndex: page);
      final previousData = state.valueOrNull?.datas ?? [];
      state = AsyncValue.data(result.copyWith(datas: [...previousData,...result.datas]));
      return result.over ? IndicatorResult.noMore : IndicatorResult.success;
    } catch (error,stackTrace) {
      state = AsyncValue<BasePaginationData<HomeArticleListItem>>.error(error,stackTrace).copyWithPrevious(state);
      return IndicatorResult.fail;
    }
  }
}

@Riverpod(keepAlive: true)
Future<List<HomeBannerItem>> homeBannerList(ref) async {
  return await ref.watch(homeRepositoryProvider).getBannerList().then((value) => value.data);
}