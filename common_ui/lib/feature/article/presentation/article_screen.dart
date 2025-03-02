import 'package:common_ui/common/widgets/async_value_widget.dart';
import 'package:common_ui/feature/article/data/article_item.dart';
import 'package:common_ui/feature/article/presentation/article_controller.dart';
import 'package:common_ui/routers/go_router_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArticleScreen extends ConsumerWidget {
  final int cid;

  const ArticleScreen({super.key, required this.cid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    print('111111111111111111$cid');

    return Scaffold(
      body: SafeArea(
          child: AsyncValueWidget(
              value: ref.watch(articleControllerProvider(cid)),
              data: (data) => _listViewBuild(context, data.datas))),
      appBar: AppBar(title: Text("文章")),
    );
  }

  Widget _listViewBuild(BuildContext context, List<ArticleItem> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _listItemViewBuild(context,data[index]);
        });
  }

  Widget _listItemViewBuild(BuildContext context,ArticleItem item) {
    return InkWell(
      onTap: () =>_onTap(context,item),
      child: Card(
          child: ListTile(title: Text(item.shareUser), subtitle: Text(item.title))),
    );
  }

  void _onTap(BuildContext context,ArticleItem item) {
    WebViewRouteData(link: item.link).push(context);
  }
}