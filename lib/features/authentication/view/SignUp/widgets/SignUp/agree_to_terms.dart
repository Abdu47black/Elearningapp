import 'package:fidel/features/authentication/view/Signin/widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';

class AgreeToTerms extends StatelessWidget {
  const AgreeToTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
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
              height: Size.appBarHeight,
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
