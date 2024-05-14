import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/devices/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(const LoginScreen());
                },
                icon: const Icon(
                  CupertinoIcons.clear,
                  color: MColors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image(
                width: MDeviceUtils.getScreenWidth() * 0.6,
                height: MDeviceUtils.getScreenHeight() * 0.3,
                color: MColors.cremecolor,
                image: const AssetImage(MImages.forgetPassIcon)),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Size.iconlg),
                  color: MColors.containerBackground,
                ),
                height: 550,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: Size.iconlg),
                    Text(
                      textAlign: TextAlign.center,
                      MTexts.resetPasswordemailsent,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: Size.spaceBtwSections),
                    Text(
                      textAlign: TextAlign.center,
                      MTexts.forgotPasswordsubtitle,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),

                    const SizedBox(height: Size.spaceBtwItems),

                    ///
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(const ResetPasswordScreen());
                            },
                            child: const Text(MTexts.done)),
                      ),
                    ),

                    SizedBox(
                      width: 150,
                      child: TextButton(
                          onPressed: () {
                            Get.to(const LoginScreen());
                          },
                          child: const Text(
                            MTexts.resendEmail,
                          )),
                    )
                  ],
                ))
          ],
        )));
  }
}
