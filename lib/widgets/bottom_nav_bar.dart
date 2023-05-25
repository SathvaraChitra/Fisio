import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.controllerr,
  }) : super(key: key);

  final ControllerDashboard controllerr;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
    });
  }
}