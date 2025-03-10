import 'package:common_ui/common/widgets/custom_textfield.dart';
import 'package:common_ui/feature/auth/presentation/login_controller.dart';
import 'package:common_ui/feature/profile/presentation/profile_controller.dart';
import 'package:common_ui/routers/go_router_build.dart';
import 'package:common_ui/services/error_handler.dart';
import 'package:common_ui/services/network/data/api_base_response.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();

}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ref.listen(loginControllerProvider, (previous,next) {
      if (next.hasError) {
        print(next.error!);
        ErrorHandler().call(context, error: next.error!);
      } else if (next.hasValue) {
        ref.invalidate(profileControllerProvider);
        GoRouter.of(context).go('/profile');
      }
    });

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        margin: EdgeInsets.only(left: 15,right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(controller: _usernameController, labelText: "输入账号"),
            SizedBox(height: 15),
            CustomTextField(controller: _passwordController, labelText: "输入密码", obscureText: true),
            SizedBox(height: 15),
            CustomTextField(controller: _confirmPwdController, labelText: "确认密码", obscureText: true),
            GestureDetector(
              onTap: () => _registerAction(context),
              child: Container(
                margin: EdgeInsets.all(40),
                width: double.infinity,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),border: Border.all(color: Colors.white,width: 1)),
                child: Text("开始注册",style: TextStyle(color: Colors.white,fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _registerAction(context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    final repassword = _confirmPwdController.text;
    if (username.isEmpty) {
      Fluttertoast.showToast(msg: "用户名不能为空");
      return;
    }
    if (password.isEmpty) {
      Fluttertoast.showToast(msg: "密码不能为空");
      return;
    }
    if (repassword.isEmpty) {
      Fluttertoast.showToast(msg: "确认密码不能为空");
      return;
    }
    if (password != repassword) {
      Fluttertoast.showToast(msg: "两次输入密码不一致");
      return;
    }
    ref.watch(loginControllerProvider.notifier).register(username: username, password: password, repassword: repassword);
  }

}