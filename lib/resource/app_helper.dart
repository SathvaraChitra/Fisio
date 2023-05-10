import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class AppHelper{

  static void showLog(String message){
    if(kDebugMode){
      debugPrint(message);
    }else if(kReleaseMode){
      //print(message);
    }
  }
  static void showSnackBar({required String title,
    String? message,
    Duration? duration = const Duration(seconds: 2),
    SnackPosition? position = SnackPosition.BOTTOM
  }){
    Get.snackbar(title, message ?? '',snackPosition: position);
  }
}