import 'package:fidel/features/authentication/view/Home/home.dart';
import 'package:fidel/features/authentication/view/Login/widgets/login.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 220, 32, 32),
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 400,
                maxWidth: 400,
                minHeight: 100,
                minWidth: 100,
              ),
              color: const Color.fromARGB(255, 16, 2, 33),
              child: Column(
                children: [
                  const SizedBox(
                    height: Size.iconxlg,
                  ),
                  //image

                  const Image(
                    image: AssetImage(MImages.verifiedicon),
                    height: Size.buttonWidth,
                    width: Size.buttonWidth,
                  ),
                  const SizedBox(
                    height: Size.spaceBtwItems,
                  ),

                  //title

                  Text(
                    MTexts.success,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    height: Size.spaceBtwItems,
                  ),

                  //subtittle
                  Text(
                    MTexts.subForverified,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Size.spaceBtwItems,
                  ),
                  //buttons fo

                  SizedBox(
                      width: 360.0,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(const HomeScreen());
                          },
                          child: const Text(MTexts.done)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
