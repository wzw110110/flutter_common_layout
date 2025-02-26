import 'package:common_ui/article/application/article_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class ArticleScreen extends ConsumerStatefulWidget {
  const ArticleScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
      return _ArticleScreenState();
  }
}

class _ArticleScreenState extends ConsumerState<ArticleScreen> {
  late RefreshController _refreshController;

  int page = 0;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(getArticlesProvider(page));

    return SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: () async {
          try {
            page = 0;
            await ref.read(getArticlesProvider(page).future);
            _refreshController.refreshCompleted();
          } catch (e) {
            _refreshController.refreshFailed();
          }
        },
        onLoading: () async {
          try {
            page++;
            print(page);
            await ref.read(getArticlesProvider(page).future);
            _refreshController.loadComplete();
          } catch (e) {
            _refreshController.refreshFailed();
          }
        },
        child: state.when(
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text("加载错误: $error")),
          data: (data) {
            print(1111111);
            // 如果返回的 data 是 null 或者空列表，可以处理默认值
            if (data == null || data.isEmpty) {
              return Center(child: Text("暂无数据"));
            }

            return ListView.builder(
                itemCount: data.length ?? 0,
                itemExtent: 80,
                itemBuilder: (BuildContext context, int index) {
                  final item = data[index];
                  return ListTile(title: Text("${index + 1}、${item.title}"));
                });
          },
          // 出错

        ));
  }

}