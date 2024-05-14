import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // page indicator
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  // dot navigation click
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // skip button
  void skipPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write("IsFirstTime", false);
    }
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
