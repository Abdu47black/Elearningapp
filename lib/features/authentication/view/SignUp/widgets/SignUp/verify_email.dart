import 'package:fidel/common/widgets/ReuseableWidgets/success_screen.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              // Image(
              //     width: MDeviceUtils.getScreenWidth() * 0.6,
              //     height: MDeviceUtils.getScreenHeight() * 0.3,
              //     color: MColors.primaryColor,
              //     image: const AssetImage(MImages.forgetPassIcon)),
              SvgPicture.asset(
                'assets/icons/email.svg',
                semanticsLabel: 'My SVG Image',
                width: MDeviceUtils.getScreenWidth() * 0.6,
                height: MDeviceUtils.getScreenHeight() * 0.2,
                colorFilter:
                    const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
              ),
              Column(
                children: [
                  const SizedBox(height: Size.defaultSpace),
                  Text(
                    textAlign: TextAlign.center,
                    MTexts.verifyYourEmailAddress,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: Size.spaceBtwSections / 2),
                  Text(
                    textAlign: TextAlign.center,
                    'Support@fidel@fided.com',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: Size.spaceBtwSections / 2),
                  Text(
                    textAlign: TextAlign.center,
                    MTexts.verifyYourEmailAddresssub,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),

                  const SizedBox(height: Size.spaceBtwItems),

                  ///
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(MTexts.done)),
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Get.offAll(const SuccessScreen());
                        },
                        child: const Text(
                          MTexts.resendEmail,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
