import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:get/get.dart';

class BindingWelcome implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerWelcome>(() => ControllerWelcome());
  }

}