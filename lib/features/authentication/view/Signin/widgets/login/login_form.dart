import 'package:fidel/features/authentication/view/Password_Configurarion/forgot_password.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/signup.dart';
import 'package:fidel/features/authentication/controllers/login_controller/login_controller.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/validators/validation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Size.spaceBtwSections),
        child: Column(
          children: [
            ///email
            TextFormField(
              controller: controller.email,
              validator: (value) => Mvalidator.validateEmail(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MTexts.email),
            ),
            const SizedBox(
              height: Size.spaceBtwInputFields,
            ),
            //password   Field
            Obx(
              () => SizedBox(
                width: double.infinity,
                child: TextFormField(
                    controller: controller.password,
                    obscureText: controller.hidepassword.value,
                    validator: (value) => Mvalidator.validatePassword(value),
                    decoration: InputDecoration(
                      labelText: MTexts.password,
                      suffixIcon: IconButton(
                        icon: Icon(controller.hidepassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye),
                        onPressed: () => controller.hidepassword.value =
                            !controller.hidepassword.value,
                      ),
                      hintText: 'Password',
                    )),
              ),
            ),
            const SizedBox(
              height: Size.spaceBtwInputFields / 2,
            ),
            //rememberme and fogot pasword
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(() => Checkbox(
                        value: controller.rememberme.value,
                        onChanged: (value) => controller.rememberme.value =
                            !controller.rememberme.value)),
                    const Text(MTexts.rememberme)
                  ],
                ),
                //SforgotPassword
                const SizedBox(width: 150.0),

                TextButton(
                    onPressed: () {
                      Get.offAll(const ForgotPasswordScreen());
                    },
                    child: Text(
                      MTexts.forgotPassword,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ))
              ],
            ),
            const SizedBox(height: Size.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.emailAndPasswordSignIn(),
                    child: const Text(MTexts.signIn))),
            const SizedBox(height: 3.0),
            Row(
              children: [
                const SizedBox(width: 40.0),
                Text(
                  MTexts.donthavaccount,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
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
                  color: MColors.accent,
                  thickness: 0.5,
                  indent: 20.0,
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
                  indent: 20.0,
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
