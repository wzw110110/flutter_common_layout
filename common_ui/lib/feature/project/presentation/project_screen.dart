import 'package:common_ui/common/widgets/async_value_widget.dart';
import 'package:common_ui/feature/project/presentation/project_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _gridHeadViewBuild("热词"),
              AsyncValueWidget(
                  value: ref.watch(hotKeyListProvider),
                  data: (data) => _gridViewBuild(context, data: data)),
              _gridHeadViewBuild("常用网站"),
              AsyncValueWidget(
                  value: ref.watch(commonSiteListProvider),
                  data: (data) =>
                      _gridViewBuild(context, data: data)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _gridViewBuild(BuildContext context,
    {required List<dynamic> data}) {
  return GridView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(10),
    itemCount: data.length,
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
    itemBuilder: (BuildContext context, int index) {
      return _gridItemViewBuild(data[index].name ?? "");
    },
  );
}

Widget _gridHeadViewBuild(String title) {
  return Container(
    height: 40,
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(left: 10),
    child: Text(
      title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

Widget _gridItemViewBuild(String title) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: Colors.black12)),
    child: Text(title),
  );
}
