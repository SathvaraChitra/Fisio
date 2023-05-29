import 'package:fb_signin_demo_getx/models/introduction_dummy.dart';
import 'package:fb_signin_demo_getx/models/onboard_dummy.dart';
import 'package:fb_signin_demo_getx/models/question.dart';
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

  static final List<Question> questions = [
    Question(
      question: "How many times have you played golf in past 12 months?",
      optionA: "Less than 5",
      optionB: "5 to 9 times",
      optionC: "10 to 19 times",
      optionD: "20 to 29 times",
      ans: "20 to 29 times",
      type: 1,),
    Question(
        question: "What do ypu typically shoot for 18 holes?",
        optionA: "Less than 80",
        optionB: "80-89",
        optionC: "90-99",
        optionD: "100+",
        ans: "90-99",
        type:1),
    Question(
        question: "How many times per month do you hit ball at a driving range?",
        optionA: "Almost every day",
        optionB: "A few times per week ",
        optionC: "About once a week",
        optionD: "Few times each month",
        ans: "Almost every day",
        type: 1),
    Question(
        question: "Which mishit shot(s) would you like to fix?",
        optionA: "Slice",
        optionB: "Hook",
        optionC: "Push",
        optionD: "Pull",
        ans: "Hook",
        type: 2),
    Question(
        question: "How many lessons have you taken from a golf instructor in the past 12 months?",
        optionA: "I haven't taken any lessons",
        optionB: "1-4 lessons",
        optionC: "5-9 lessons",
        optionD: "10+",
        ans: "10+",
        type: 1)
  ];
}