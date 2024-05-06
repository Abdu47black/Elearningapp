import 'package:fidel/bottom_nav.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:get/get.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.darkcontainer,
      body: Column(
        children: [
          Center(
            child: Expanded(
              child: Container(
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: Size.buttonWidth),
                    const Image(
                      image: AssetImage(MImages.verifiedicon),
                      height: Size.buttonWidth,
                      width: Size.buttonWidth,
                    ),
                    const SizedBox(height: Size.spaceBtwItems),

                    Text(MTexts.success,
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: Size.spaceBtwItems),

                    //subtittle
                    Text(MTexts.subForverified,
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: Size.spaceBtwItems,
                    ),
                    //buttons fo

                    SizedBox(
                        width: Size.buttonWidth * 3,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.offAll(const BottomNavBar());
                            },
                            child: const Text(MTexts.done)))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
