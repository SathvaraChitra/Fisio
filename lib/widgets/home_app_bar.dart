import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/widgets/circular_percent_action_button.dart';
import 'package:fb_signin_demo_getx/widgets/custom_flexible_spacebar.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key? key,
    required this.controllerr,
  }) : super(key: key);

  final ControllerDashboard controllerr;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}