import 'package:fidel/features/authentication/controllers/signup_controller/signup_controller.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fidel/util/constants/text_strings.dart';

class AgreeToTerms extends StatelessWidget {
  const AgreeToTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Column(
      children: [
        Row(
          children: [
            Obx(() => Checkbox(
                value: controller.privacypolicy.value,
                onChanged: (value) {
                  controller.privacypolicy.value =
                      !controller.privacypolicy.value;
                })),
            const Expanded(
              child: Text(
                MTexts.agreetoterms,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(MTexts.areadayhaveaccount),
            TextButton(
                onPressed: () => Get.offAll(const LoginScreen()),
                child: const Text(MTexts.signIn))
          ],
        )
      ],
    );
  }
}
