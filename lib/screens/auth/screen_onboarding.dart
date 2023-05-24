import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/resource/app_helper.dart';
import 'package:fb_signin_demo_getx/resource/app_lists.dart';
import 'package:fb_signin_demo_getx/widgets/onboard_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOnBoarding extends GetView<ControllerOnBoarding> {
  static String pageId = '/screenOnBoarding';
  final controllerr = Get.put(ControllerOnBoarding());

  ScreenOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return PageView.builder(
      controller: controllerr.pageController,
      onPageChanged: (value) {
        controllerr.pageIndex.value = value;
        AppHelper.showLog('page ${controllerr.pageIndex.value}');
      },
      itemCount: AppLists.dummy_data_onboard.length,
      itemBuilder: (BuildContext context, int index) =>
          Obx(() {
            return OnBoardContent(
              size: size,
              image: AppLists.dummy_data_onboard[index].image,
              title: AppLists.dummy_data_onboard[index].title,
              description: AppLists.dummy_data_onboard[index].description,
              background: AppLists.dummy_data_onboard[index].background,
              controller: controllerr,
              isActive: (index == controllerr.pageIndex.value),
              isLast : (index == AppLists.dummy_data_onboard.length - 1),
            );
          }),
    );
  }
}

