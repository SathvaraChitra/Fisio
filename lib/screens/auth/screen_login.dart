import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:fb_signin_demo_getx/resource/app_helper.dart';
import 'package:fb_signin_demo_getx/widgets/row_social_signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenLogin extends GetView<ControllerLogin> {
  static String pageId = '/screenLogin';
  final controllerr = Get.put(ControllerLogin());

  ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login_image.jpg'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.toNamed(ScreenSignUp.pageId);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new, color: Colors.black54,
                        size: 18,)),
                  InkWell(
                    onTap: () {
                      Get.toNamed(ScreenSignUp.pageId);
                    },
                    child: const Text('Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),),
                  ),
                ],
              ),
              SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  child: Image.asset(
                    'assets/images/welcome.png',
                  )),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                'Login with your credential',
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: controllerr.tcEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(hintText: 'Email',
                    border: InputBorder.none,),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Obx(() => TextFormField(
                    controller: controllerr.tcPassword,
                    obscureText: !controllerr.isVisiblePassword.value,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(border: InputBorder.none,
                      hintText: 'Password',
                      suffixIcon: InkWell(
                          onTap: () {
                            controllerr.isVisiblePassword.value =
                            !controllerr.isVisiblePassword.value;
                          },
                          child: controllerr.isVisiblePassword.value ?
                          const Icon(Icons.visibility) : const Icon(
                              Icons.visibility_off)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SizedBox(
                //padding: const EdgeInsets.symmetric(vertical: 18),
                width: size.width,
                height: 45,
                //height: size.height * 0.125,
                child: ElevatedButton(
                    onPressed: () {
                      if (controllerr.validateForm(context)) {
                        AppHelper.showSnackBar(title: 'Login');
                        controllerr.tcEmail.clear();
                        controllerr.tcPassword.clear();
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.button!
                        .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(height: size.height * 0.01,),
              const Text('Forgot Password',
                style: TextStyle(fontSize: 16, color: Colors.white70,),),
              SizedBox(height: size.height * 0.15,),
              RowSocialSignIn(
                btnGoogleSignIn: () {
                  AppHelper.showSnackBar(title: 'Google', message: 'sign in',);
                  //Get.snackbar('Google', 'sign in');
                },
                btnAppleSignIn: () {
                  AppHelper.showSnackBar(title: 'Apple', message: 'Sign In');
                },
                btnFBSignIn: () {
                  AppHelper.showSnackBar(title: 'Facebook', message: 'Sign In');
                },
              ),
              //SizedBox(height: size.height * 0.03,),


            ],
          ),
        ),
      ),
    );
  }
}
