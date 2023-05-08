import 'package:fb_signin_demo_getx/get/bindings.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: ScreenSplash.pageId,
        page: () => ScreenSplash(),
        binding: BindingSplash()),
    GetPage(
        name: ScreenOnBoarding.pageId,
        page: () => ScreenOnBoarding(),
        binding: BindingOnBoarding()),
    GetPage(
        name: ScreenLogin.pageId,
        page: () => ScreenLogin(),
        binding: BindingLogin()),
    GetPage(
        name: ScreenSignUp.pageId,
        page: () => ScreenSignUp(),
        binding: BindingSignUp()),
    GetPage(
        name: ScreenDashboard.pageId,
        page: () => ScreenDashboard(),
        binding: BindingDashboard()),
  ];
}
