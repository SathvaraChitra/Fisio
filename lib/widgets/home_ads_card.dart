import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:flutter/material.dart';

class HomeAdsCard extends StatelessWidget {
  const HomeAdsCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
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
    );
  }
}