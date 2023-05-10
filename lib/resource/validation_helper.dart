import 'package:fb_signin_demo_getx/resource/app_strings.dart';

class ValidationHelper{
  static dynamic isValidEmail(String email, {String? message}) {
    if (email.isEmpty) {
      return message ?? 'Required';
    } else if (!RegExp(AppStrings.regexEmail).hasMatch(email)) {
      return 'Enter valid email';
    } else {
      return null;
    }
  }

}