import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerIntroduction extends GetxController{
  late PageController pageViewController;

  final  pageIndex = 0.obs;
  @override
  void onInit() {
    pageViewController = PageController();
    super.onInit();
  }
  @override
  void onClose() {
    pageViewController.dispose();
    super.onClose();
  }

}