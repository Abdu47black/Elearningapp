import 'package:fidel/bottom_nav.dart';
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
    var appBar = AppBar(
      toolbarHeight: 100,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Get.offAll(const BottomNavBar());
        },
        color: MColors.accent,
      ),
      title: Text(
        MTexts.continuewithphone,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: true,
    );
    return Scaffold(
        appBar: appBar,
        body: Center(
          child: Column(
            children: [
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
                          style: Theme.of(context).textTheme.titleSmall),
                      const SizedBox(height: Size.spaceBtwItems),
                      Row(
                        children: [
                          SizedBox(
                            width: 300,
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () =>
                                    Get.to(const VerificaionScreen()),
                                child: Text(
                                  MTexts.continuebtn,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                )),
                          )
                        ],
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
