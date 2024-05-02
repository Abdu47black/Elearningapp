import 'package:fidel/features/Course/Home/widgets/home.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verfiedbox extends StatelessWidget {
  const Verfiedbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: Size.spaceBtwItems,
          ),

          //subtittle
          Text(
            MTexts.subForverified,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Size.spaceBtwItems,
          ),
          //buttons fo

          SizedBox(
              width: Size.buttonWidth * 3,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(const HomeScreen());
                  },
                  child: const Text(MTexts.done)))
        ],
      ),
    );
  }
}
