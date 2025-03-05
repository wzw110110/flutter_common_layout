import 'dart:async';

import 'package:common_ui/routers/go_router_build.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'network/network_exception.dart';

class ErrorHandler {
  FutureOr call(BuildContext context, {required Object error}) {
    if (error is NetworkException) {
      return _handleNetworkException(context, networkException: error);
    }
  }

  FutureOr _handleNetworkException(BuildContext context,
      {required NetworkException networkException}) {
    networkException.maybeWhen(
      needLogin: (errorMsg) => showDialog(
        context: context,
        useRootNavigator: true,
        builder: (ct) => AlertDialog(
          content: Text(errorMsg ?? ""),
          actions: [
            FilledButton(
                onPressed: () {
                  Navigator.of(ct).pop();
                  const LoginRouteData().push(context);
                },
                child: const Text("去登录"))
          ],
        ),
      ),
      apiException: (int errorCode, String? errorMsg) {
        Fluttertoast.showToast(msg: errorMsg ?? "未知异常");
        // final errorSnackBar = SnackBar(
        //     behavior: SnackBarBehavior.floating,
        //     margin: MediaQuery.of(context).viewInsets,
        //     content: Text("${errorMsg ?? "未知异常"} code $errorCode"));
        // ScaffoldMessenger.of(context).showSnackBar(errorSnackBar);
      },
      orElse: () => debugPrint(
        networkException.toString(),
      ),
    );
  }
}
