import 'package:common_ui/common/widgets/async_value_widget.dart';
import 'package:common_ui/feature/home/data/home_article_list_item.dart';
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
    return Scaffold(body: AsyncValueWidget(value: ref.watch(homeControllerProvider), data: (data)=>_listViewBuilder(context, data: data.datas)));
  }

  Widget _listViewBuilder(BuildContext context,
      {required List<HomeArticleListItem> data}) {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (_, index) => HomeListItemView(data: data[index]));
  }
}