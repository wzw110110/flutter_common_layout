import 'package:common_ui/article/application/article_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ArticleScreen extends ConsumerWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getArticlesProvider(0));
    RefreshController _refreshController =
        RefreshController(initialRefresh: false);

    return SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: () async {
          await ref.refresh(getArticlesProvider(0).future);
          _refreshController.refreshCompleted();
        },
        onLoading: () async {
          await ref.refresh(getArticlesProvider(1).future);
          _refreshController.loadComplete();
        },
        child: state.when(
          // 加载中
          loading: () => CircularProgressIndicator(),

          // 加载成功
          data: (data) {
            // 如果返回的 data 是 null 或者空列表，可以处理默认值
            if (data == null || data.isEmpty) {
              return Text("没有文章");
            }

            return ListView.builder(
                itemCount: data.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final item = data[index];
                  return ListTile(title: Text("${index + 1}、${item.title}"));
                });
          },
          // 出错
          error: (error, stackTrace) => Text("加载错误: $error"),
        ));
  }
}