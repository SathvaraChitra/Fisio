import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:get/get.dart';

class BindingSplash implements Bindings{
  @override
  void dependencies() {
    //Get.put(ControllerSplash());
    Get.lazyPut<ControllerSplash>(() => ControllerSplash());
  }
}