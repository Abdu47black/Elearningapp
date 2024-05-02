import 'package:fidel/bottom_nav.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/signup.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
            TextFormField(
                decoration: const InputDecoration(
              labelText: MTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
              hintText: 'Password',
            )),
            const SizedBox(
              height: Size.spaceBtwInputFields / 2,
            ),
            //rememberme and fogot pasword
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SforgotPassword
                SizedBox(width: 150.0),
                Text(MTexts.forgotPassword)
              ],
            ),
            const SizedBox(
              height: Size.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(const BottomNavBar());
                    },
                    child: const Text(MTexts.signIn))),
            const SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40.0,
                ),
                const Text(MTexts.donthavaccount),
                TextButton(
                    onPressed: () {
                      Get.offAll(const SignUpScreen());
                    },
                    child: Text(
                      MTexts.signUp,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                    child: Divider(
                  color: MColors.primaryColor,
                  thickness: 0.5,
                  indent: 40.0,
                  endIndent: 5,
                )),
                Text(
                  MTexts.orSignInWith,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const Flexible(
                    child: Divider(
                  color: MColors.accent,
                  thickness: 0.5,
                  indent: 40.0,
                  endIndent: 5,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
