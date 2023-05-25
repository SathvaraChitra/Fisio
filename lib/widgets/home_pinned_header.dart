import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class PinnedHeaderHome extends StatelessWidget {
  const PinnedHeaderHome({
    Key? key,
    required this.controllerr,
  }) : super(key: key);

  final ControllerDashboard controllerr;

  @override
  Widget build(BuildContext context) {
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
  }
}