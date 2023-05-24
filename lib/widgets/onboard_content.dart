import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:fb_signin_demo_getx/resource/app_lists.dart';
import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:fb_signin_demo_getx/widgets/dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.description,
    required this.background,
    required this.controller,
    this.isActive = false, required this.isLast,
  }) : super(key: key);

  final Size size;
  final String image, title, description, background;
  final ControllerOnBoarding controller;
  final bool isActive, isLast;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboard_background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  child: Image.asset(
                    image,
                  )),
              SizedBox(
                height: size.height * 0.3,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: headerTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(description,
                  style: const TextStyle(
                      fontSize: 16,color: Colors.white
                  ),
                  textAlign: TextAlign.center),
              SizedBox(height: size.height * 0.03,),
              SizedBox(
                width: size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    isLast ? Get.offAndToNamed(ScreenLogin.pageId) :controller.pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                  style: AppStyles.buildOnboardButtonStyle(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Next',
                        style: TextStyle(fontSize: 20,color: Colors.orange),
                      ),
                      Icon(Icons.navigate_next,color: Colors.orange),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(AppLists.dummy_data_onboard.length, (index) =>
                      DotIndicator(isActive: index == controller.pageIndex.value)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextStyle headerTextStyle() {
    return const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white);
  }


}