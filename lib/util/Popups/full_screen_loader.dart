import 'package:fidel/common/widgets/loader/animation_loader.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helpers/helper_functions.dart';

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
              height: 399,
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  MAnimationLoaderWidget(text: text, animation: animation)
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
