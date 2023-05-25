import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/widgets/home_ads_card.dart';
import 'package:fb_signin_demo_getx/widgets/home_app_bar.dart';
import 'package:fb_signin_demo_getx/widgets/home_apply_trust_container.dart';
import 'package:fb_signin_demo_getx/widgets/bottom_nav_bar.dart';
import 'package:fb_signin_demo_getx/widgets/home_my_progress_card.dart';
import 'package:fb_signin_demo_getx/widgets/home_my_saved_card.dart';
import 'package:fb_signin_demo_getx/widgets/home_recall_card.dart';
import 'package:fb_signin_demo_getx/widgets/home_review_refer_card.dart';
import 'package:fb_signin_demo_getx/widgets/home_training_plan_card.dart';
import 'package:fb_signin_demo_getx/widgets/home_three_container_row.dart';
import 'package:fb_signin_demo_getx/widgets/home_my_progress_row.dart';
import 'package:fb_signin_demo_getx/widgets/home_pinned_header.dart';

class ScreenDashboard extends GetView<ControllerDashboard> {
  static String pageId = '/screenDashboard';
  final controllerr = Get.put(ControllerDashboard());

  ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(controllerr: controllerr),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_homepage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controllerr.pageViewController,
            onPageChanged: (value) {},
            children: [
              Stack(children: [
                CustomScrollView(
                  controller: controllerr.scrollController,
                  slivers: [
                    Obx(() => AppBarHome(controllerr: controllerr),),

                    SliverStack(
                      children: [
                        MultiSliver(
                          //pushPinnedChildren: false,
                          children: [
                            const MyProgressRowHome(), /// My progress row

                            ApplyAndTrustContainerHome(size: size),/// Row with two Container

                            Obx(() {
                              return PinnedHeaderHome(controllerr: controllerr);///Pinned Header
                            }),

                            RowWithThreeContainerHome(size: size), ///three container in a row

                            HomeRecallCard(size: size),/// Recall Cards

                            HomeMyProgressCard(size: size), ///  My Progress Card

                            HomeMySavedCard(size: size),/// My Saved Card

                            HomeTrainingPlanCard(size: size),/// Training Plan Card

                            HomeReviewReferCard(size: size),/// Review & Refer Card

                            HomeAdsCard(size: size),/// Ads Card
                          ],
                        ),
                        //),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 20,
                  width: size.width,
                  //right: 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          controllerr.lastStatus.value ? const Icon(
                              Icons.arrow_back_ios_new,
                              size: 18,
                              color: Colors.black54) : Container(),
                          Row(
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
                        ],
                      );
                    }),
                  ),
                ),
              ]),
              const Center(child: Text('Notebook'),),
              const Center(child: Text('Locker'),),
              const Center(child: Text('Profile'),)
            ],

          ),
        ),
      ),
    );
  }


}
























