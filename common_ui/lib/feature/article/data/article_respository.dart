
import 'package:common_ui/feature/article/data/article_item.dart';
import 'package:common_ui/services/network/api_interface.dart';
import 'package:common_ui/services/network/api_service_provider.dart';
import 'package:common_ui/services/network/data/api_base_response.dart';
import 'package:common_ui/services/network/data/base_pagination_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_respository.g.dart';

class ArticleResponsitory {
  final ApiInterface _apiInterface;
  ArticleResponsitory({required ApiInterface apiInterface}) : _apiInterface = apiInterface;
  
  Future<ApiBaseResponse<BasePaginationData<ArticleItem>>> getArticleList({required pageIndex,required cid,}) {
    print("pppppppp${cid}pppppppp${pageIndex}");
    return _apiInterface.getPaginationData(path: "/article/list/$pageIndex/json?cid=$cid", paginationItemConverter: ArticleItem.fromJson);
  }
}

@Riverpod(keepAlive: true)
ArticleResponsitory articleResponsitory (ref) {
  return ArticleResponsitory(apiInterface: ref.watch(apiServiceProvider));
}