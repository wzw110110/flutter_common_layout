import 'package:common_ui/feature/profile/presentation/profile_controller.dart';
import 'package:common_ui/routers/go_router_build.dart';
import 'package:common_ui/services/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(profileControllerProvider);

    final titles = ["我的收藏", "检查更新", "关于我们"];

    ref.listen(profileControllerProvider, (previous, next) {
      if (next.hasError) {
        ErrorHandler().call(context, error: next.error!);
      }
    });

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => _onTapTop(context),
              child: Container(
                  height: 200,
                  color: Colors.teal,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/doctor_placeholder.png",
                          width: 64, height: 64),
                      SizedBox(height: 15),
                      Text(
                        userInfo.maybeWhen(
                            data: (value) => value.userInfo.nickname,
                            orElse: () => "未登录"),
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  )),
            ),
            _listViewBuild(titles)
          ],
        ),
      )),
    );
  }

  Widget _listViewBuild(titles) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: titles.length,
        itemExtent: 50,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 0.5),
                borderRadius: BorderRadius.circular(3.0)),
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
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
