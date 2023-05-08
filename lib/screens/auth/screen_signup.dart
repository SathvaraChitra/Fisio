import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSignUp extends GetView<ControllerSignUp> {
  static var pageId = '/screenSignup';
  final controllerr = Get.put(ControllerSignUp());

  ScreenSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
    );
  }
}
