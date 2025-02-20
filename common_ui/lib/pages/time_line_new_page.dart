import 'package:flutter/material.dart';

class TimelineItem {
  final String title;
  final String content;

  TimelineItem({required this.title, required this.content});
}

class TimeLineNewPage extends StatefulWidget {
  const TimeLineNewPage({super.key});

  @override
  State<TimeLineNewPage> createState() => _TimeLineNewPageState();
}

class _TimeLineNewPageState extends State<TimeLineNewPage> {
  final List<TimelineItem> items = List.generate(
    10,
    (index) => TimelineItem(
        title: "第 ${index + 1} 条数据", content: "内容：${"啦啦啦啦啦啦啦啦啦啦" * index}"),
  );

  static const _timeLineWidth = 50.0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _listViewItem(context, item: items[index]);
      },
    );
  }

  Widget _listViewItem(BuildContext context, {required TimelineItem item}) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(_timeLineWidth, 10, 20, 10),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: _buildContent(context, item: item),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          width: _timeLineWidth,
          child: _buildTimeline(context),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, {required TimelineItem item}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          item.title,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        SizedBox(height: 5),
        Text(item.content),
      ],
    );
  }

  Widget _buildTimeline(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Center(
          child: Container(
            color: Colors.yellow,
            width: 10,
            height: double.maxFinite,
          ),
        )),
        Center(
            child: SizedBox.square(
          dimension: 30,
          child: CircleAvatar(),
        ))
      ],
    );
  }
}
