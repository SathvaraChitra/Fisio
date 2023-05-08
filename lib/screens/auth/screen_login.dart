import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenLogin extends GetView<ControllerLogin> {
  static String pageId = '/screenLogin';
  final controllerr = Get.put(ControllerLogin());

  ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
    );
  }
}
