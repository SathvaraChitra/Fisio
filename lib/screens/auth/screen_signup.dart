import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:fb_signin_demo_getx/helper/dailog_confirm_email.dart';
import 'package:fb_signin_demo_getx/helper/dialog_success_signup.dart';
import 'package:fb_signin_demo_getx/resource/app_helper.dart';
import 'package:fb_signin_demo_getx/widgets/row_social_signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSignUp extends GetView<ControllerSignUp> {
  static var pageId = '/screenSignup';
  final controllerr = Get.put(ControllerSignUp());

  ScreenSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_image.jpg'),
                  fit: BoxFit.cover)),
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
                        Get.toNamed(ScreenLogin.pageId);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new, color: Colors.black54,
                        size: 18,)),
                  InkWell(
                    onTap: () {
                      Get.toNamed(ScreenLogin.pageId);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
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
                'Create an account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                'Create your account with your credential Create your account with your credential',
                textAlign: TextAlign.center,
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
                  controller: controllerr.tcFullName,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Full Name',
                  ),
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
                child: TextFormField(
                  controller: controllerr.tcEmail,
                  keyboardType : TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
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
                    textInputAction: TextInputAction.done,
                    obscureText: controllerr.isVisiblePassword.value,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      suffixIcon: InkWell(
                          onTap: () {
                            controllerr.isVisiblePassword.value =
                            !controllerr.isVisiblePassword.value;
                          },
                          child: controllerr.isVisiblePassword.value
                              ? const Icon(Icons.visibility_off) : const Icon(
                              Icons.visibility)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                padding: const EdgeInsets.only(top: 18),
                width: size.width,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {
                      if (controllerr.validateForm(context)) {
                        showDialog(
                          context: context,
                          barrierColor: Colors.transparent,
                          builder: (context) {
                            Future.delayed(const Duration(seconds: 4), () {
                              Get.back();
                              showDialog(
                                context: context,
                                barrierColor: Colors.transparent,
                                builder: (context) {
                                  return DialogSuccessSignup(
                                    title: 'Congratulations!',
                                    message:
                                    'You have successfully create Fisio account.',
                                    description:
                                    'This is random text for alertdialog of Successfully create account',
                                    button: 'Let\'s Start!',
                                    buttonClick: () {
                                      Get.back();
                                      Get.offAllNamed(ScreenDashboard.pageId);
                                      //Get.offAndToNamed(ScreenDashboard.pageId);
                                    },
                                  );
                                },
                              );
                            });
                            return DialogConfirmEmail(
                              title: 'Confirmation by Email',
                              message:
                              'This is random text for alertdialog of confirm email or re-send email',
                              buttonClick: () {
                                AppHelper.showLog(
                                    'Dialog Re-send email clicked');
                              },
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              const Text('Or Sign In with ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
              RowSocialSignIn(
                btnGoogleSignIn: () {
                  Get.showSnackbar(const GetSnackBar(
                    title: 'Google Login',
                    message: 's',
                    duration: Duration(seconds: 2),
                  ));
                },
                btnAppleSignIn: () {
                  Get.showSnackbar(const GetSnackBar(
                    title: 'Apple Login',
                    message: 's',
                    duration: Duration(seconds: 2),
                  ));
                },
                btnFBSignIn: () {
                  Get.showSnackbar(const GetSnackBar(
                    title: 'Facebook Login',
                    message: 's',
                    duration: Duration(seconds: 2),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
