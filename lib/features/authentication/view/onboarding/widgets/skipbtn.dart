import 'package:fidel/features/authentication/controllers/on_boarding_controller/on_boarding_controller.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class skipbtn extends StatelessWidget {
  const skipbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: MSize.appBarHeight + 25,
      top: MSize.defaultSpace,
      right: MSize.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
