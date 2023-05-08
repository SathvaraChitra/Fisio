import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:get/get.dart';

class ControllerSplash extends GetxController{

  @override
  void onInit() {
    navigateScreen();
    super.onInit();
  }

  navigateScreen(){
    Future.delayed(const Duration(seconds: 4),() {
      Get.offAndToNamed(ScreenOnBoarding.pageId);
    },);
  }

}