import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/OTP/verified_page_success.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VerificaionScreen extends StatelessWidget {
  const VerificaionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MColors.containerBackground,
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: Size.lg),
          MAppBar(
            showBackArrow: true,
            title: Text('Verify Phone',
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          const SizedBox(height: Size.buttonWidth - 50),
          Center(
              child: Text(
            MTexts.codeissentto,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          )),
          const SizedBox(height: Size.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 4; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Size.md),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "0", hintStyle: TextStyle(fontSize: 20)),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Size.defaultSpace),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MTexts.didntrecievecode,
                    style: Theme.of(context).textTheme.headlineSmall),
                TextButton(
                  onPressed: () {},
                  child: Text(MTexts.requestagain,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: MColors.primaryColor)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Size.lg),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(const VerifiedPage());
                  },
                  child: const Text(MTexts.verifyandcreateaccount)),
            ),
          )
        ])));
  }
}
