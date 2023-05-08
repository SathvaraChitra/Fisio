import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDashboard extends GetView<ControllerDashboard> {
  static String pageId = '/screenDashboard';
  final controllerr = Get.put(ControllerDashboard());

  ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
    );
  }
}
