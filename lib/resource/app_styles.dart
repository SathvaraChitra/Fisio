import 'package:flutter/material.dart';

class AppStyles{
  static ButtonStyle buildOnboardButtonStyle() {
    return ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFFFFF)),
        /*   fixedSize: MaterialStatePropertyAll(
                      Size(size.width * 0.5, size.height * 0.06)),*/
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
        ));
  }

  static BoxDecoration roundCornerBoxDecoration() {
    return BoxDecoration(
      color: const Color(0xFFd9d9d9).withOpacity(0.8),
      borderRadius: BorderRadius.circular(10),
    );
  }
}