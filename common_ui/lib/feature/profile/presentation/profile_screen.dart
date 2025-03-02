import 'package:common_ui/routers/go_router_build.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final titles = ["我的收藏","检查更新","关于我们"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
        SingleChildScrollView(
          child: Column(
            children: [
              _topViewBuild(context),
              _listViewBuild()
            ],
          ),
        )
      ),
    );
  }

  Widget _topViewBuild(context) {
    return GestureDetector(
      onTap: ()=>_onTapTop(context),
      child: Container(
        height: 200,
        color: Colors.teal,
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/doctor_placeholder.png",width: 64,height: 64),
            Text("未登录",style: TextStyle(color: Colors.white,fontSize: 14),)
          ],
        )
      ),
    );
  }

  Widget _listViewBuild() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: titles.length,
        itemExtent: 50,
        itemBuilder: (context,index) {
          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black26,width: 0.5),borderRadius: BorderRadius.circular(3.0)),
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(titles[index]),
          );
    });
  }

  void _onTapTop(context) {
      LoginRouteData().push(context);
  }
}
