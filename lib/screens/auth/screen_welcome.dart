import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenWelcome extends StatelessWidget {
  static String pageId = '/screenWelcome';

  const ScreenWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_image.jpg'),
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
                    child: Image.asset('assets/images/welcome.png',
                    ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                const Text(
                  'Personal Golf Training',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Heat more good shots.\n Enjoy more great moments.',
                    style: TextStyle(
                        fontSize: 16,color: Colors.white
                    ),
                    textAlign: TextAlign.center),
                SizedBox(height: size.height * 0.2,),
                ElevatedButton(
                  onPressed: () {
                    Get.offAndToNamed(ScreenOnBoarding.pageId);
                  },
                  style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                      fixedSize: MaterialStatePropertyAll(
                          Size(size.width * 0.5, size.height * 0.06)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Let\'s Start',
                        style: TextStyle(fontSize: 20,color: Colors.orange),
                      ),
                      Icon(Icons.navigate_next,color: Colors.orange),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
