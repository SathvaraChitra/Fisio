import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerDashboard extends GetxController{
  ScrollController? scrollController;
   PageController pageViewController = PageController(initialPage: 0);
  var lastStatus = false.obs;
  double height = 500;
  var pinned = false.obs;

  var currentBottomIndex = 0.obs;
  var pageIndex = 0.obs;

  RxBool get isShrink {
    return (scrollController != null &&
        scrollController!.hasClients &&
        scrollController!.offset > (height - 150)).obs;
  }
  RxBool get isPinned{
    print(pinned.value);
    return (scrollController != null &&
    scrollController!.hasClients &&
    scrollController!.offset > (585)).obs;
  }

  void _scrollListener() {
    if (isShrink.value != lastStatus.value) {
      lastStatus.value = isShrink.value;
    }
    if(isPinned.value != pinned.value ){
      pinned.value = isPinned.value;
    }
  }

  void jumpToPage(int index){
    pageViewController.jumpToPage(index);
  }
  @override
  void onInit() {
    scrollController = ScrollController()..addListener(_scrollListener);
    super.onInit();
  }
  @override
  void onClose() {
    scrollController?.removeListener(_scrollListener);
    scrollController?.dispose();
    pageViewController.dispose();
    super.onClose();
  }

}