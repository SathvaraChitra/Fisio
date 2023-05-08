import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSplash extends GetView<ControllerSplash> {
  static String pageId = '/splashScreen';
  final controllerr = Get.put(ControllerSplash());
  //final ControllerSplash controller  = Get.find();

  ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withBlue(200),
      body: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
