import 'package:common_ui/feature/auth/presentation/login_controller.dart';
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
    ref.listen(loginControllerProvider, (previous,next) {
      if (next.hasError) {
        ErrorHandler().call(context, error: next.error!);
      } else if (next.hasValue) {
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
            _inputViewBuild("输入账号",_usernameController),
            SizedBox(height: 15),
            _inputViewBuild("输入密码",_passwordController),
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
            )
          ],
        ),
      ),
    );
  }

  Widget _inputViewBuild(String labelText,TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white,fontSize: 14),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white,fontSize: 14),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 0.5)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1)),
      ),
    );
  }

  Future _loginAction(BuildContext context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    return ref.watch(loginControllerProvider.notifier).login(username: username, password: password);
  }
}
