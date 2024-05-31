import 'package:fidel/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:fidel/features/authentication/view/Password_Configurarion/reset_password.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Iconsax.arrow_left_2,
            color: MColors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(Size.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///headings
              Text(MTexts.forgotPassword,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: Size.spaceBtwItems),
              Text(MTexts.forgotPasswordsubtitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: Size.spaceBtwSections / 2),

              /// texfField
              Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                  controller: controller.email,
                  validator: Mvalidator.validateEmail,
                  decoration: const InputDecoration(
                      labelText: MTexts.email,
                      prefixIcon: Icon(Iconsax.magic_star),
                      focusColor: MColors.containerBackground),
                ),
              ),

              /// submit Button
              const SizedBox(height: Size.spaceBtwSections),

              ///
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.sendPasswordResetEmail(),
                    child: const Text(MTexts.forgotPassword)),
              )
            ],
          ),
        ));
  }
}
