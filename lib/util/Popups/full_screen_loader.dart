import 'package:fidel/common/widgets/loader/animation_loader.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: MColors.containerBackground,
              width: double.infinity,
              height: 499,
              child: Column(
                children: [
                  const SizedBox(height: 250),
                  MAnimationLoaderWidget(text: text, animation: animation)
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
