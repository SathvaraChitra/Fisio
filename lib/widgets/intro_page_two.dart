import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/widgets/intro_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPageTwo extends StatelessWidget {


  const IntroPageTwo({Key? key, required this.size, required this.onBtnClick})
      : super(key: key);
  final Size size;
  final VoidCallback onBtnClick;

  @override
  Widget build(BuildContext context) {
    var dummyString = 'This is dummy text for tile of train on intro page.';
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: size.height * 0.04),
                  height: size.height * 0.3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/onboard_background.jpg'),
                          fit: BoxFit.cover)),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/welcome.png', scale: 10,)),
                ),
              ],
            ),
            Positioned(
              top: size.height * 0.25,
              child: Container(
                width: size.width,
                height: size.height * 0.75,
                margin: const EdgeInsets.only(top: 5),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 5,
                          spreadRadius: 2)
                    ],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.015,),
                      const Text('Welcome To Fisio!',
                        style: TextStyle(fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),),
                      SizedBox(height: size.height * 0.01,),
                      const Text(
                        'These are out tools that will lead you to achieving your goals ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),),
                      SizedBox(height: size.height * 0.02,),
                      const IntroListTile(
                          title: 'Shot Check',
                          subtitle: 'This is dummy text for tile of train on intro page. This is dummy text for tile of train on intro page',
                          iconPath: 'assets/images/ic_intro_shot_check.png'),
                      SizedBox(height: size.height * 0.02,),
                      IntroListTile(
                          title: 'Swing Video',
                          subtitle: dummyString,
                          iconPath: 'assets/images/ic_intro_swing_video.png'),
                      SizedBox(height: size.height * 0.02,),
                      IntroListTile(title: 'Coach Review',
                          subtitle: dummyString,
                          iconPath: 'assets/images/ic_intro_coach_review.png'),
                      SizedBox(height: size.height * 0.02,),
                      IntroListTile(title: 'Recall Card',
                          subtitle: dummyString,
                          iconPath: 'assets/images/ic_intro_recall_card.png'),
                      SizedBox(height: size.height * 0.02,),
                      SizedBox(
                        width: size.width * 0.7,
                        child: ElevatedButton(onPressed: onBtnClick,
                            child: const Text('Done',
                              style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(height: size.height * 0.02,),
                      Obx(() {
                        return Text('${Get
                            .find<ControllerIntroduction>()
                            .pageIndex
                            .value + 1}/2');
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 8,
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black54,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
