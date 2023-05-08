import 'package:fb_signin_demo_getx/get/bindings.dart';
import 'package:fb_signin_demo_getx/get/get_routes.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ScreenSplash(),
      initialBinding: BindingSplash(),
      getPages: AppPages.pages,

    );
  }
}
