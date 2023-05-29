import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../resource/app_enums.dart';

class ControllerAboutUsTraining extends GetxController{
  CarouselController buttonCarouselController = CarouselController();
  var characterr = AppEnums.NON.obs;

  var isSelectedA = false.obs;
  var isSelectedB = false.obs;
  var isSelectedC = false.obs;
  var isSelectedD = false.obs;

  var radio = 1;
  var check = 2;

  onNextClick() {
    characterr.value = AppEnums.NON;
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    buttonCarouselController
        .nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }
}