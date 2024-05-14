import 'package:fidel/features/authentication/view/SignUp/widgets/OTP/enter_yourphone.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Size.spaceBtwSections),
        child: Column(
          children: [
            //email

            const TextField(
                decoration: InputDecoration(
              labelText: 'Your Email',
              hintText: 'Email',
            )),
            const SizedBox(
              height: Size.spaceBtwInputFields,
            ),
            //password
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                  decoration: const InputDecoration(
                labelText: MTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
                hintText: 'Password',
              )),
            ),
            const SizedBox(
              height: Size.spaceBtwInputFields / 2,
            ),

            const SizedBox(
              height: Size.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(const ConWithPhone());
                    },
                    child: const Text(MTexts.createAccount))),
            const SizedBox(
              height: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
