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
                      Mvalidator.validateEmptyText('last Name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: 'Last Name'),
                ),
              )
            ]),
            //email
            const SizedBox(height: Size.spaceBtwInputFields),
            TextFormField(
                controller: controller.phoneNumber,
                validator: (value) =>
                    Mvalidator.validateEmptyText('PhoneNumber', value),
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Phone Nubmber',
                )),
            const SizedBox(height: Size.spaceBtwSections),

            TextFormField(
                controller: controller.email,
                validator: (value) =>
                    Mvalidator.validateEmptyText('Email', value),
                decoration: const InputDecoration(
                  labelText: 'Your Email',
                  hintText: 'Email',
                )),

            const SizedBox(height: Size.spaceBtwInputFields),
            //password   Field
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                  controller: controller.password,
                  validator: (value) =>
                      Mvalidator.validateEmptyText('first Name', value),
                  decoration: const InputDecoration(
                    labelText: MTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash),
                    hintText: 'Password',
                  )),
            ),
            const SizedBox(height: Size.spaceBtwInputFields / 2),

            const SizedBox(height: Size.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(const VerifyEmailScreen());
                    },
                    child: const Text(MTexts.createAccount))),
            const SizedBox(height: Size.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: WidgetStateProperty.all(0),
                        backgroundColor: WidgetStateProperty.all<Color>(
                            MColors.containerBackground)),
                    onPressed: () {
                      Get.to(const ConWithPhone());
                    },
                    child: Text(
                      MTexts.continuewithphone,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ))),
            const SizedBox(
              height: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
