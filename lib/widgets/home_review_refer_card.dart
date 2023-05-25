import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:flutter/material.dart';

class HomeReviewReferCard extends StatelessWidget {
  const HomeReviewReferCard({
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
    );
  }
}