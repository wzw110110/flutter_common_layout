import 'package:common_ui/article/application/article_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArticleScreen extends ConsumerWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getArticlesProvider);
    return state.when(
      // 加载中
      loading: () => CircularProgressIndicator(),

      // 加载成功
      data: (data) {
        // 如果返回的 data 是 null 或者空列表，可以处理默认值
        if (data == null || data.isEmpty) {
          return Text("没有文章");
        }
        // 获取数组中的第一个元素并显示
        final firstArticle = data.first;
        return Text("第一篇文章：${firstArticle.title}");
      },
      // 出错
      error: (error, stackTrace) => Text("加载错误: $error"),
    );
  }

}