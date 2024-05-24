import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/OTP/verification_page.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ConWithPhone extends StatelessWidget {
  const ConWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(height: Size.md),
          MAppBar(
            showBackArrow: true,
            title: Text(MTexts.continuewithphone,
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          const SizedBox(height: Size.sm),
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Image.asset('assets/images/others/VerifaywithPhone.png'),
          ),
          const SizedBox(height: Size.lg),
          Expanded(
            child: Container(
              height: double.infinity,
              width: Mhelper.screenWidth(),
              decoration: const BoxDecoration(
                  color: MColors.containerBackground,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Column(
                children: [
                  const SizedBox(
                    height: Size.sm,
                  ),
                  Text(MTexts.enteryourphone,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: Size.spaceBtwItems),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Size.md),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ),
                  const SizedBox(height: Size.lg),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Size.md),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () => Get.to(const VerificaionScreen()),
                          child: Text(
                            MTexts.continuebtn,
                            style: Theme.of(context).textTheme.headlineSmall,
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
