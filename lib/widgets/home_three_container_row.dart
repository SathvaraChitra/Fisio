import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:flutter/material.dart';

class RowWithThreeContainerHome extends StatelessWidget {
  const RowWithThreeContainerHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
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
    );
  }
}