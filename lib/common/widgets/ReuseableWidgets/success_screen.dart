import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/devices/device_utility.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: Size.buttonWidth),

              Image(
                image: const AssetImage(MImages.verifiedicon),
                height: Size.buttonWidth,
                width: MDeviceUtils.getScreenWidth() * 0.2,
              ),
              const SizedBox(height: Size.spaceBtwItems),

              Text(MTexts.verifyandcreateaccount,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: Size.spaceBtwItems),

              //subtittle
              Text(MTexts.successsub,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: Size.spaceBtwItems,
              ),
              //buttons fo

              SizedBox(
                  width: Size.buttonWidth * 3,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(MTexts.done)))
            ],
          ),
        ),
      ),
    );
  }
}
