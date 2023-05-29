import 'package:carousel_slider/carousel_slider.dart';
import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/resource/app_lists.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/question.dart';
import '../../resource/app_enums.dart';

class ScreenAboutUsTraining extends GetView<ControllerAboutUsTraining> {
  static String pageId = '/screenAboutUsTraining';

  ScreenAboutUsTraining({Key? key}) : super(key: key);
  final controllerr  = Get.put(ControllerAboutUsTraining());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('About You'),
        ),
        body: CarouselSlider(
          carouselController: controller.buttonCarouselController,
          options: CarouselOptions(
              scrollPhysics: const NeverScrollableScrollPhysics(),
              enableInfiniteScroll: false,
              height: height - 100,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              reverse: false
            // autoPlay: false,
          ),
          items: AppLists.questions
              .map((item) => Container(
            child: Center(child: QuestionWidget(item)),
          ))
              .toList(),
        ),

      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {

  final Question question;
  final controller = Get.find<ControllerAboutUsTraining>();

  QuestionWidget(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Theme(
          data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.grey),
          child: Column(children: <Widget>[
            question.type == controller.check
                ? getCheckBoxWidget(question)
                : getRadioWidget(question),
            const SizedBox(
              height: 30.0,
            ),
            actionButton(),
          ]),
        ));
  }

  /*onVerifyClick() {
    var msg = "";

    if (question.type == controller.radio) {
      if (controller.characterr.value == AppEnums.optionA &&
          question.optionA == question.ans ||
          controller.characterr.value == AppEnums.optionB &&
              question.optionB == question.ans ||
          controller.characterr.value == AppEnums.optionC &&
              question.optionC == question.ans ||
          controller.characterr.value == AppEnums.optionD &&
              question.optionD == question.ans) {
        msg = "Correct";
      } else {
        msg = "Incorrect";
      }
    } else {
      if (controller.isSelectedA.value && question.optionA == question.ans ||
          controller.isSelectedB.value && question.optionB == question.ans ||
          controller.isSelectedC.value && question.optionC == question.ans ||
          controller.isSelectedD.value && question.optionD == question.ans) {
        msg = "Correct";
      } else {
        msg = "Incorrect";
      }
    }
    print(msg);

    // Fluttertoast.showToast(
    //     msg: msg,
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.grey,
    //     textColor: Colors.white,
    //     fontSize: 16.0);
  }*/

  Widget getRadioWidget(Question item) {
    return Obx(() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                item.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: RadioListTile<AppEnums>(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  item.optionA,
                  style: TextStyle(
                      color: controller.characterr.value == AppEnums.optionA
                          ? Colors.indigo
                          : Colors.grey),
                ),
                value: AppEnums.optionA,
                groupValue: controller.characterr.value,
                onChanged: (AppEnums? value) {
                  controller.characterr.value = value!;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: RadioListTile<AppEnums>(
                contentPadding: const EdgeInsets.all(0),
                title: Text(item.optionB,
                    style: TextStyle(
                        color: controller.characterr.value == AppEnums.optionB
                            ? Colors.indigo
                            : Colors.grey)),
                value: AppEnums.optionB,
                groupValue: controller.characterr.value,
                onChanged: (AppEnums? value) {
                  controller.characterr.value = value!;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: RadioListTile<AppEnums>(
                contentPadding: const EdgeInsets.all(0),
                title: Text(item.optionC,
                    style: TextStyle(
                        color: controller.characterr.value == AppEnums.optionC
                            ? Colors.indigo
                            : Colors.grey)),
                value: AppEnums.optionC,
                groupValue: controller.characterr.value,
                onChanged: (AppEnums? value) {
                  controller.characterr.value = value!;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: RadioListTile<AppEnums>(
                contentPadding: const EdgeInsets.all(0),
                title: Text(item.optionD,
                    style: TextStyle(
                        color: controller.characterr.value == AppEnums.optionD
                            ? Colors.indigo
                            : Colors.grey)),
                value: AppEnums.optionD,
                groupValue: controller.characterr.value,
                onChanged: (AppEnums? value) {
                  controller.characterr.value = value!;
                },
              ),
            ),
          ]);
    });
  }

  Widget getCheckBoxWidget(Question item) {
    return Obx(() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              item.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Select all that apply',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: CheckBoxWidget(
                label: item.optionA,
                labelColor:
                controller.isSelectedA.value ? Colors.indigo : Colors.grey,
                value: controller.isSelectedA.value,
                onChanged: (newValue) {
                  controller.isSelectedA.value = newValue;
                },
                // onChanged: (bool newValue) {
                //   setState(() {
                //     _isSelectedA = newValue;
                //   });
                // },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: CheckBoxWidget(
                label: item.optionB,
                labelColor:
                controller.isSelectedB.value ? Colors.indigo : Colors.grey,
                value: controller.isSelectedB.value,
                onChanged: (newValue) {
                  controller.isSelectedB.value = newValue;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: CheckBoxWidget(
                label: item.optionC,
                labelColor:
                controller.isSelectedC.value ? Colors.indigo : Colors.grey,
                value: controller.isSelectedC.value,
                onChanged: (newValue) {
                  controller.isSelectedC.value = newValue;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: CheckBoxWidget(
                label: item.optionD,
                labelColor:
                controller.isSelectedD.value ? Colors.indigo : Colors.grey,
                //padding: const EdgeInsets.symmetric(horizontal: 20.0),
                value: controller.isSelectedD.value,
                onChanged: (newValue) {
                  controller.isSelectedD.value = newValue;
                },
              ),
            ),
          ]);
    });
  }

  Widget actionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // ElevatedButton(
        //   child: const Text(
        //     "Verify",
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   onPressed: () => onVerifyClick(),
        // ),
        // const SizedBox(
        //   width: 20.0,
        // ),
        Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              colors: [Color(0xffFFC266), Color(0xffF58124)],
              //stops: [0.0,1.0],
              begin: Alignment(-1, -6),
              end: Alignment(1.0, 6.0),
            ),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0),
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => controller.onNextClick(),
          ),
        ),
      ],
    );
  }
  Widget CheckBoxWidget({required String label,
    required bool value,
    required Function(bool) onChanged,
    Color? labelColor,}) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            //activeColor: Colors.orange,
            value: value,
            onChanged: (newValue) {
              onChanged(newValue!);
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          Expanded(child: Text(label,style: TextStyle(color: labelColor),)),
        ],
      ),
    );
  }

}

