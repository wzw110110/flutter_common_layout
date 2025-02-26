
import 'package:common_ui/feature/home/data/home_article_list_item.dart';
import 'package:common_ui/services/network/api_interface.dart';
import 'package:common_ui/services/network/api_service_provider.dart';
import 'package:common_ui/services/network/data/api_base_response.dart';
import 'package:common_ui/services/network/data/base_pagination_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_respository.g.dart';

class HomeRepository {
    final ApiInterface _apiServicee;
    HomeRepository({required ApiInterface apiService}) : _apiServicee = apiService;

    Future<ApiBaseResponse<BasePaginationData<HomeArticleListItem>>> getArticlePaginationList({required pageIndex}) {
      return _apiServicee.getPaginationData(path: "/article/list/$pageIndex/json", paginationItemConverter: HomeArticleListItem.fromJson);
    }
}

@Riverpod(keepAlive:true)
HomeRepository homeRepository(ref) {
  return HomeRepository(apiService:ref.watch(apiServiceProvider));
}