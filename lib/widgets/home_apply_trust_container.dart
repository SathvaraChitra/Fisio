import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:flutter/material.dart';

class ApplyAndTrustContainerHome extends StatelessWidget {
  const ApplyAndTrustContainerHome({
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
    );
  }
}