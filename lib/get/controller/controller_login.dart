import 'package:fb_signin_demo_getx/resource/app_helper.dart';
import 'package:fb_signin_demo_getx/resource/validation_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController{

  TextEditingController tcEmail = TextEditingController();
  TextEditingController tcPassword = TextEditingController();

  var isVisiblePassword = false.obs;

  bool validateForm(context) {
    bool status = true;
    String email = tcEmail.text.toString().trim();
    String password = tcPassword.text.toString().trim();

    if (email.isEmpty) {
      status = false;
      AppHelper.showSnackBar(title: 'Empty Email',message: 'Please enter your email address');
    } else if (ValidationHelper.isValidEmail(email) != null) {
      status = false;
      AppHelper.showSnackBar(title: 'Invalid',message: 'Please enter valid email');
    } else if (password.isEmpty) {
      status = false;
      AppHelper.showSnackBar(title: 'Empty Password',message: 'Please enter password');
    }
    return status;
  }

}