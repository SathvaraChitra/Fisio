
import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:fb_signin_demo_getx/widgets/circular_percent_action_button.dart';
import 'package:fb_signin_demo_getx/widgets/custom_flexible_spacebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sliver_tools/sliver_tools.dart';

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
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black54,
            onTap: (value) {
              controllerr.currentBottomIndex.value = value;
              controllerr.jumpToPage(value);
            },
            currentIndex: controllerr.currentBottomIndex.value,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_outlined), label: 'Notebook'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.key_outlined), label: 'Locker'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Profile'),
            ]);
      }),
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
            onPageChanged: (value) {

            },

            children: [
              Stack(children: [
                CustomScrollView(
                  controller: controllerr.scrollController,
                  slivers: [
                    Obx(
                          () =>
                          SliverAppBar(
                            elevation: 0,
                            backgroundColor: controllerr.lastStatus.value
                                ? Colors.white54
                                : Colors.transparent,
                            pinned: true,
                            expandedHeight: 500,
                            //collapsedHeight: 100,
                            bottom: PreferredSize(
                                preferredSize: const Size.fromHeight(
                                    kToolbarHeight),
                                child: controllerr.lastStatus.value
                                    ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                          width: 80,
                                          child: Image.asset(
                                              'assets/images/welcome.png')),
                                      const CircularPercentActionButton(),
                                    ],
                                  ),
                                )
                                    : Container()),

                            /*bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight / 2),
                child: Stack(
                    children: [ShaderMask(
                      shaderCallback: (Rect rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white10,
                          ],
                          stops: [0.0,0.2]
                        ).createShader(rect);
                      },
                      //blendMode: BlendMode.colorBurn,
                      child: Container(
                        width: double.maxFinite,
                        height: kToolbarHeight / 2,
                        //color: Colors.red,
                      ),
                    )],
                ),
              ),*/
                            flexibleSpace: const ClipRRect(
                              //child: BackdropFilter(
                              //filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                              child: CustomFlexibleSpaceBar(),
                              //),
                            ),
                            actions: controllerr.lastStatus.value
                                ? [
                              //const CircularPercentActionButton(),
                            ]
                                : null,
                          ),
                    ),
                    SliverStack(
                      children: [
                        // SliverPositioned.fill(
                        //   top: 16,
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(8),
                        //       boxShadow: const <BoxShadow>[
                        //         BoxShadow(
                        //           offset: Offset(0, 4),
                        //           blurRadius: 8,
                        //           color: Colors.black26,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // SliverPadding(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 16, vertical: 16),
                        //   sliver:
                        MultiSliver(
                          //pushPinnedChildren: false,
                          children: [
                            /*SliverPinnedHeader(
                                    child: Container(
                                      width: double.maxFinite,
                                      height: kToolbarHeight / 2,
                                      //color: Colors.white,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [ Colors.white,
                                            Colors.white10,],
                                          stops: [0.0, 0.8,],
                                        ),
                                      ),
                                    ),
                                  ),*/

                            /// My progress row
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  //height: 100,
                                  //width: double.infinity,

                                  decoration: AppStyles
                                      .roundCornerBoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,vertical: 12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'My Progress',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),
                                              ),
                                              const Text(
                                                '4 more sessions to move next level!',
                                                style: TextStyle(
                                                    color: Colors.black45),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              LinearPercentIndicator(
                                                lineHeight: 15,
                                                // progressColor: Colors.orange,
                                                barRadius:
                                                const Radius.circular(15),
                                                backgroundColor: Colors.white,
                                                linearGradient:
                                                LinearGradient(colors: [
                                                  Colors.orange.withOpacity(
                                                      0.5),
                                                  Colors.orange
                                                ], stops: const [
                                                  0.0,
                                                  0.7
                                                ]),
                                                percent: 0.5,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                          'assets/images/ic_intro_status.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /// Row with two Container
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      //height: 100,
                                      width: size.width * 0.4,
                                      decoration: AppStyles
                                          .roundCornerBoxDecoration(),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Apply',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),
                                              ),
                                              Image.asset(
                                                  'assets/images/ic_intro_apply.png')
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text('Train in Driving rang'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      //height: 100,
                                      width: size.width * 0.4,
                                      decoration: AppStyles
                                          .roundCornerBoxDecoration(),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'Trust',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold),
                                              ),
                                              Image.asset(
                                                  'assets/images/ic_intro_trust.png')
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text('Train in Golf Course'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Obx(() {
                              return SliverPinnedHeader(

                                  child: Container(
                                    color: controllerr.isPinned.value ? Colors
                                        .white54 : Colors.transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16.0, horizontal: 16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                'Welcome Kurt',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              ),
                                              Image.asset(
                                                'assets/images/ic_intro_status.png',
                                                scale: 1.2,
                                                color: Colors.black87,
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: const ShapeDecoration(
                                              shape: StadiumBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Colors.black54)),
                                            ),
                                            child: Row(
                                              children: const [
                                                Text('all my units'),
                                                Icon(Icons
                                                    .navigate_next_outlined)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                            }),
                            /*SliverStickyHeader.builder(
                              //overlapsContent: true,
                              sticky: true,
                              builder: (context, state) {
                                return  Container(
                                  color: state.isPinned ? Colors.white54 : null,
                                    child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Row(
                                children: [
                                const Text(
                                'Welcome Kurt',
                                style: TextStyle(
                                fontSize: 24,
                                ),
                                ),
                                Image.asset(
                                'assets/images/ic_intro_status.png',
                                scale: 1.2,
                                color: Colors.black87,
                                ),
                                ],
                                ),
                                Container(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 5),
                                decoration: const ShapeDecoration(
                                shape: StadiumBorder(
                                side: BorderSide(
                                width: 1, color: Colors.black54)),
                                ),
                                child: Row(
                                children: const [
                                Text('all my units'),
                                Icon(Icons.navigate_next_outlined)
                                ],
                                ),
                                )
                                ],
                                ),),);

                            },),*/

                            ///three container in a row
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      //height: 100,
                                      width: size.width * 0.25,
                                      decoration: AppStyles
                                          .roundCornerBoxDecoration(),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/ic_intro_shot_check.png'),
                                          const Text(
                                            'Shot \n Ckeck',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      //height: 100,
                                      width: size.width * 0.25,
                                      decoration: AppStyles
                                          .roundCornerBoxDecoration(),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/ic_intro_swing_video.png'),
                                          const Text(
                                            'Swing \n Video',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      //height: 100,
                                      width: size.width * 0.25,
                                      decoration: AppStyles
                                          .roundCornerBoxDecoration(),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/images/ic_intro_coach_review.png'),
                                          const Text(
                                            'Coach \n Review',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            ///container Recall Cards
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 120,
                                  width: size.width,
                                  decoration: AppStyles
                                      .roundCornerBoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 38.0),
                                              child: Text(
                                                'This is dummy text for Container',
                                                maxLines: 2,
                                                softWrap: true,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width * 0.4,
                                            padding: const EdgeInsets.all(5),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'assets/images/home_page.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: const Text(
                                            'Recall Cards',
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,

                                        child: CircleAvatar(radius: 20,
                                          backgroundColor: Colors.white70,
                                          child: Image.asset(
                                              'assets/images/ic_intro_recall_card.png'),),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /// Container My Progress
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 120,
                                  width: size.width,
                                  decoration: AppStyles
                                      .roundCornerBoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 38.0),
                                              child: Text(
                                                'This is dummy text for Containerlklkl',
                                                maxLines: 2,
                                                softWrap: true,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width * 0.4,
                                            padding: const EdgeInsets.all(5),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'assets/images/home_page.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: const Text(
                                            'My Progress',
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /// Container My Saved
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 120,
                                  width: size.width,
                                  decoration: AppStyles
                                      .roundCornerBoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 38.0),
                                              child: Text(
                                                'This is dummy text for Containerlklkl',
                                                maxLines: 2,
                                                softWrap: true,
                                              ),
                                            ),
                                          ),
                                          Stack(
                                              children: [
                                                Container(
                                                  width: size.width * 0.4,
                                                  padding: const EdgeInsets.all(
                                                      5),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                    child: Image.asset(
                                                      'assets/images/home_page.jpg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 0,

                                                  child: CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor: Colors
                                                        .white70,
                                                    child: Image.asset(
                                                        'assets/images/ic_intro_recall_card.png'),),
                                                ),
                                              ]
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: const Text(
                                            'My Saved',
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),

                            ///Container Training Plan
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 120,
                                  width: size.width,
                                  decoration: AppStyles
                                      .roundCornerBoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 38.0),
                                              child: Text(
                                                'This is dummy text for Containerlklkl',
                                                maxLines: 2,
                                                softWrap: true,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width * 0.4,
                                            padding: const EdgeInsets.all(5),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              child: Image.asset(
                                                'assets/images/home_page.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: const Text(
                                            'Training Plan',
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /// Container Review & Refer
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 120,
                                  width: size.width,
                                  decoration: AppStyles
                                      .roundCornerBoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 38.0),
                                              child: Text(
                                                'This is dummy text for Containerlklkl',
                                                maxLines: 2,
                                                softWrap: true,
                                              ),
                                            ),
                                          ),
                                          Stack(
                                            children: [
                                              Container(
                                              width: size.width * 0.4,
                                              padding: const EdgeInsets.all(5),
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/login_image.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),

                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: const Text(
                                            'Review & Refer',
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 10,
                                          right: size.width * 0.15  ,
                                          child: Container(
                                           // height: 70,
                                            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                            width: 120,

                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.white70,
                                              boxShadow:[ BoxShadow(
                                                color: Colors.grey.shade500,
                                                blurRadius: 8,
                                                offset: const Offset(0,0),
                                                blurStyle: BlurStyle.outer
                                                

                                              )]
                                            ),
                                            child: Text('New feedback is waiting for you'),
                                          )),
                                      Positioned(
                                        bottom: 8,
                                        right: size.width * 0.14,
                                        child:       Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(Icons.arrow_forward,
                                          size: 18,
                                          color: Colors.black54,),
                                      ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ///Container Ads
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                              sliver: SliverToBoxAdapter(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: 130,
                                  width: size.width,
                                  decoration: AppStyles
                                      .roundCornerBoxDecoration()
                                      .copyWith(image: const DecorationImage(
                                      image: AssetImage('assets/images/onboard_background.jpg',),
                                  fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          const Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 38.0),
                                              child: Text(
                                                'This is dummy text for Containerlklkl',
                                                style: TextStyle(color: Colors.white),
                                                maxLines: 2,
                                                softWrap: true,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: size.width * 0.4,
                                            padding: const EdgeInsets.all(5),

                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange,
                                          ),
                                          child: const Text(
                                            'Ads',
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                 
                                ),
                              ),
                            ),
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
