import 'package:cached_network_image/cached_network_image.dart';
import 'package:common_ui/common/widgets/async_value_widget.dart';
import 'package:common_ui/feature/home/data/home_article_list_item.dart';
import 'package:common_ui/feature/home/data/home_banner_item.dart';
import 'package:common_ui/feature/home/presentation/home_controller.dart';
import 'package:common_ui/feature/home/presentation/home_list_item_view.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeNotifier = ref.read(homeControllerProvider.notifier);
    return Scaffold(
        body: EasyRefresh(
            onRefresh: homeNotifier.onRefresh,
            onLoad: homeNotifier.onLoad,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AspectRatio(
                      aspectRatio: 900 / 500,
                      child: AsyncValueWidget(
                          value: ref.watch(homeBannerListProvider),
                          data: (data) =>
                              _homeBannerBuilder(context, data: data))),
                  AsyncValueWidget(
                      value: ref.watch(homeControllerProvider),
                      data: (data) =>
                          _listViewBuilder(context, data: data.datas))
                ],
              ),
            )));
  }

  Widget _listViewBuilder(BuildContext context,
      {required List<HomeArticleListItem> data}) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (_, index) => HomeListItemView(data: data[index]));
  }

  Widget _homeBannerBuilder(BuildContext context,{required List<HomeBannerItem> data}) {
    if (data.isEmpty) {
      return Text("暂无数据",textAlign: TextAlign.center);
    }
    return PageView.builder(itemBuilder: (ct,index) {
      final itemData = data[index % data.length];
      return CachedNetworkImage(imageUrl: itemData.imagePath);
    });
  }
}