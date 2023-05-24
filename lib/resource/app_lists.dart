import 'package:fb_signin_demo_getx/models/introduction_dummy.dart';
import 'package:fb_signin_demo_getx/models/onboard_dummy.dart';
import 'package:flutter/material.dart';

class AppLists{
  static final List <OnboardDummy> dummy_data_onboard = [
    OnboardDummy(image:'assets/images/welcome.png',
        title:'Train smarter to Play Better' ,
        description: 'Set up your Firebase project · Security: '
            'Shorter TTLs provide stronger security, because',
        background: 'assets/images/onboard_background.jpg'),
    OnboardDummy(image:'assets/images/welcome.png',
        title:'Train Your Mind' ,
        description: 'Set up your Firebase project · Security: '
            'Shorter TTLs provide stronger security, because',
        background: 'assets/images/onboard_background.jpg'),
    OnboardDummy(image:'assets/images/welcome.png',
        title:'Train Your Muscles' ,
        description: 'Set up your Firebase project · Security: '
            'Shorter TTLs provide stronger security, because',
        background: 'assets/images/onboard_background.jpg'),
    OnboardDummy(image:'assets/images/welcome.png',
        title:'Apply at the Range' ,
        description: 'Set up your Firebase project · Security: '
            'Shorter TTLs provide stronger security, because',
        background: 'assets/images/onboard_background.jpg'),
    OnboardDummy(image:'assets/images/welcome.png',
        title:'Trust on the Course' ,
        description: 'Set up your Firebase project · Security: '
            'Shorter TTLs provide stronger security, because',
        background: 'assets/images/onboard_background.jpg'),
  ];

  static final List <IntroductionDummy> dummy_data_intro = [
    IntroductionDummy(
        title: 'title',
        description: 'description',
        icon: Icons.add),
    IntroductionDummy(title: 'title', description: 'description', icon: Icons.ice_skating)
  ];
}