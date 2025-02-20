import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<StatefulWidget> createState() {
    return TimelineState();
  }
}

class TimelineState extends State<Timeline> {
  final List<Map<String, String>> items = [
    {
      'title': '发的双节快乐减肥开始劳动竞赛发都结束了附件代课老师',
      'content': '发的流口水看见了所肩负的抗裂砂浆封疆大吏开始减肥的开始了司法局考虑到尖峰时刻领导附件开始了登记反馈.'
    },
    {'title': '辅导教师实际付款领导司法鉴定考虑', 'content': '辅导教师实际付款领导司法鉴定考虑'},
    {
      'title': '发的流口水看见了',
      'content':
          '发的流口水看见了所肩负的抗裂砂浆封疆大吏开始减肥的开始了司法局考虑到尖峰时刻领导附件开始了开始了司法局考虑到尖峰时刻领导附件开始了开始了司法局考虑到尖峰时刻领导附件开始了开始了司法'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _listViewItem(items[index]);
        });
  }

  //FIXME: 尽量不要用 dynamic 类型
  Widget _listViewItem(item) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                width: 40,
                height: 40,
              ),
              Expanded(
                child: Container(
                  width: 8,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 60, top: 10),
              child: CustomPaint(
                size: Size(10, 20),
                painter: TrianglePainter(),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10, bottom: 20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title'],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(item['content']),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//FIXME: 这个场景没有必要用 CustomPainter
class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(0, size.height / 2)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
