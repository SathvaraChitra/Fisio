import 'package:fb_signin_demo_getx/resource/app_styles.dart';
import 'package:flutter/material.dart';

class HomeRecallCard extends StatelessWidget {
  const HomeRecallCard({
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
    );
  }
}