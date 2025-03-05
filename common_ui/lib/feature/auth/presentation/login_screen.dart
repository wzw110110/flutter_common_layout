import 'package:common_ui/common/widgets/custom_textfield.dart';
import 'package:common_ui/feature/auth/presentation/login_controller.dart';
import 'package:common_ui/feature/profile/presentation/profile_controller.dart';
import 'package:common_ui/routers/go_router_build.dart';
import 'package:common_ui/services/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.listen(loginControllerProvider, (previous, next) {
      if (next.hasError) {
        ErrorHandler().call(context, error: next.error!);
      } else if (next.hasValue) {
        ref.invalidate(profileControllerProvider);
        Navigator.of(context).pop();
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
            GestureDetector(
              onTap: () => _loginAction(context),
              child: Container(
                margin: EdgeInsets.all(40),
                width: double.infinity,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),border: Border.all(color: Colors.white,width: 1)),
                child: Text("开始登录",style: TextStyle(color: Colors.white,fontSize: 15)),
              ),
            ),
            GestureDetector(
              onTap: () => _registerAction(context),
              child: Text("注册",style: TextStyle(color: Colors.white,fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }

  Future _loginAction(BuildContext context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    return ref.watch(loginControllerProvider.notifier).login(username: username, password: password);
  }

  void _registerAction(BuildContext context) {
      RegisterRouteData().push(context);
  }
}
