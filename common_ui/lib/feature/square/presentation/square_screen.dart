import 'package:common_ui/common/widgets/async_value_widget.dart';
import 'package:common_ui/feature/square/data/square_tree_item.dart';
import 'package:common_ui/feature/square/presentation/square_controller.dart';
import 'package:common_ui/routers/go_router_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SquareScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("课程")),
      body: SafeArea(
          child: AsyncValueWidget(
              value: ref.watch(squareControllerProvider),
              data: (data) => _listViewBuild(context, data))),
    );
  }

  Widget _listViewBuild(BuildContext context, List<SquareTreeItem> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _listItemViewBuild(context, data[index]);
        });
  }

  Widget _listItemViewBuild(BuildContext context, SquareTreeItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Text(item.name,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: item.children.map((child) {
            return InkWell(
              onTap: () {
                ArticleRouteData(child.id).push(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Text(child.name, style: TextStyle(fontSize: 14)),
              ),
            );
          }).toList(),
        )
        /*GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10),
            itemCount: item.children.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 10,
                childAspectRatio: 4,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              SquareTreeItem child = item.children[index];
              return InkWell(
                  child: Text(child.name, style: TextStyle(fontSize: 14)));
            })*/
      ],
    );

    List<String> subTitles = [];
    if (item.children.isNotEmpty) {
      for (SquareTreeItem child in item.children) {
        subTitles.add(child.name);
      }
    }
    return ListTile(
      title: Text(item.name),
      subtitle: Text(subTitles.join('、')),
    );
  }
}