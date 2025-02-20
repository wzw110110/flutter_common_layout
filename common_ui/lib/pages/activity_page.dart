import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return _listContentView();
  }

  Widget _listItemView () {
    return Container(
      height: 200,
      child: Column(
        children: [
          _listItemView(),
          _listContentView()
        ],
      ),
    );
  }

  Widget _listContentView() {
    return Container(
      color: Colors.yellow[100],
      constraints: BoxConstraints(maxHeight: 120),
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("App发放电邮1甲方打开了觉得付款了4",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("发的两节课尖峰时刻来得倒垃圾考虑甲电风扇了解甲方打开了方打开发动机离开了及",
                          style: TextStyle(fontSize: 15, color: Colors.grey),maxLines: 2,overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,  // 垂直居中，水平居右
            child: Container(
              margin: EdgeInsets.only(right: 10),
              width: 60,
              height: 60,
              child: Image.asset('assets/images/doctor_placeholder.png'),
            ),
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
          color: Colors.yellow,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(12))),
      child: Text("1111111",style: TextStyle(fontSize: 12,color: Colors.orange),),
    );
  }
}
