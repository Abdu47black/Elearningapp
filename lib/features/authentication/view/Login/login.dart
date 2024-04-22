import 'package:fidel/common/styles/spacing_styles.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    bool dark = Mhelper.isDardMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: Mspacingstyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            // todo; login title
            Column(
              children: [
                Text(
                  MTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: MSize.sm),
              ],
            ),

            // todo:email ,password login btn and forgot password

            Form(
              child: Padding(
                //   width: Mhelper.screenWidth(),
                // height: Mhelper.screenHeight(),
                // color: Color(0XFF2F2F42),
                padding: const EdgeInsets.symmetric(
                    vertical: MSize.spaceBtwSections),
                child: Container(
                  width: Mhelper.screenWidth(),
                  height: Mhelper.screenHeight(),
                  color: Color(0XFF2F2F42),
                  child: Column(
                    children: [
                      //email

                      const TextField(
                          decoration:
                              // ignore: prefer_const_constructors
                              InputDecoration(
                        labelText: 'Your Email',
                        hintText: 'Email',
                      )),
                      const SizedBox(
                        height: MSize.spaceBtwInputFields,
                      ),
                      //password
                      TextFormField(
                          decoration: const InputDecoration(
                        labelText: MTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                        hintText: 'Password',
                      )),
                      const SizedBox(
                        height: MSize.spaceBtwInputFields / 2,
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
                        height: MSize.spaceBtwSections,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(MTexts.signIn))),
                      const SizedBox(
                        height: MSize.spaceBtwItems,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(MTexts.createAccount)))
                    ],
                  ),
                ),
              ),
            ),

// divider

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Divider(
                color: dark ? Mcolors.dark : Mcolors.accent,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
