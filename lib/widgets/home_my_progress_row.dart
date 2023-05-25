import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressRowHome extends StatelessWidget {
  const MyProgressRowHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
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
    );
  }
}