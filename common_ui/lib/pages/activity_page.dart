import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {

  final List<Map<String, String>> items = [
    {
      'title': '发的双节快乐减肥开始劳动竞赛发都结束了附件代课老师',
      'content': '发的流口水看见了所肩负的抗裂砂浆封疆大吏开始减肥的开始了司法局考虑到尖峰时刻领导附件开始了登记反馈.'
    },
    {
      'title': '辅导教师实际付款领导司法鉴定考虑',
      'content': '辅导教师实际付款领导司法鉴定考虑辅导教师实际付款领导司法鉴定考虑辅导教师实际付款领导司法鉴定考虑'
    },
    {
      'title': '发的流口水看见了',
      'content': '发的流口水看见了所肩负的抗裂砂浆封疆大吏开始减肥的开始了司法局考虑到尖峰时刻领导附件开始了开始了司法局考虑到尖峰时刻领导附件开始了开始了司法局考虑到尖峰时刻领导附件开始了开始了司法'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _listItemView(items[index],index);
        });
  }

  Widget _listItemView (item,index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber[100],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12))),
      margin: EdgeInsets.only(top:10,left: 10,bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (index != 1) _badgeView(),
          _listContentView(item,index),
          _statusView()
        ],
      ),
    );
  }

  Widget _listContentView(item,index) {
    return Container(
      color: Colors.amber[100],
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: index == 0 ? CrossAxisAlignment.start:CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['title'],
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(item['content'],
                    style: TextStyle(fontSize: 15, color: Colors.grey),maxLines: 2,overflow: TextOverflow.ellipsis,softWrap: true),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:10),
            width: 60,
            height: 60,
            child: Image.asset('assets/images/doctor_placeholder.png'),
          ),
        ],
      ),
    );
  }

  Widget _badgeView() {
    return Container(
      height: 24,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(12))),
      child: Text("1111111",style: TextStyle(fontSize: 12,color: Colors.orange),),
    );
  }

  Widget _statusView() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
          color: Colors.white
      ),
      height: 60,
      width: double.infinity,
      child: Text("活动完成：已领取积分",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
    );
  }
}
