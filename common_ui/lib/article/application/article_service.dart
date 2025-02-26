
import 'package:common_ui/article/domain/article_data.dart';
import 'package:common_ui/http/dio_instance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_service.g.dart';

@Riverpod(keepAlive: true)
Future<List<ArticleItem>?> getArticles(FutureProviderRef<List<ArticleItem>?> ref,int page) async {
  final response = await DioInstance.instance().get(path: "article/list/$page/json");
  final articleData = Article.fromJson(response.data['data']);
  if (articleData.datas != null && articleData.datas!.isNotEmpty) {
    return articleData.datas;
  }
  return [];
}