import 'package:common_ui/common/widgets/async_value_widget.dart';
import 'package:common_ui/feature/square/data/square_tree_item.dart';
import 'package:common_ui/feature/square/presentation/square_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SquareScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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