import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:fb_signin_demo_getx/widgets/intro_page_one.dart';
import 'package:fb_signin_demo_getx/widgets/intro_page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenIntroduction extends GetView<ControllerIntroduction> {
  static String pageId = '/screenIntroduction';
  final controllerr = Get.put(ControllerIntroduction());

  ScreenIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controllerr.pageViewController ,
      onPageChanged: (value) {
        controllerr.pageIndex.value = value;
      },
      children: [
      IntroPageOne(size: size, onBtnClick: () {
        controllerr.pageViewController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      },),
      IntroPageTwo(size: size, onBtnClick: () {
        Get.offAllNamed(ScreenAboutUsTraining.pageId);
      },),
    ],);
  }
}
