import 'package:fidel/features/authentication/controllers/signup_controller/signup_controller.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/OTP/enter_yourphone.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/verify_email.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Size.spaceBtwSections),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstname,
                  validator: (value) =>
                      Mvalidator.validateEmptyText('first Name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: 'First Name'),
                ),
              ),
              const SizedBox(width: Size.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastname,
                  validator: (value) =>
                      Mvalidator.validateEmptyText('last name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: 'Last Name'),
                ),
              )
            ]),
            //email
            const SizedBox(height: Size.spaceBtwInputFields),
            TextFormField(
                controller: controller.username,
                validator: (value) =>
                    Mvalidator.validateEmptyText('username', value),
                decoration: const InputDecoration(
                  labelText: 'user name',
                  hintText: 'username',
                )),
            const SizedBox(height: Size.spaceBtwSections),
            TextFormField(
                controller: controller.phoneNumber,
                validator: (value) => Mvalidator.validatePhoneNumber(value),
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Phone Nubmber',
                )),
            const SizedBox(height: Size.spaceBtwSections),

            TextFormField(
                controller: controller.email,
                validator: (value) => Mvalidator.validateEmail(value),
                decoration: const InputDecoration(
                  labelText: 'Your Email',
                  hintText: 'Email',
                )),

            const SizedBox(height: Size.spaceBtwInputFields),
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

            const SizedBox(height: Size.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.signup(),
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
