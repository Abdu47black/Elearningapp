import 'package:fidel/features/authentication/controllers/on_boarding_controller/on_boarding_controller.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pageindicator extends StatelessWidget {
  const Pageindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Mhelper.isDardMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
      top: Mhelper.screenHeight() * 0.8,
      left: Mhelper.screenWidth() * 0.4,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? Colors.blue : MColors.dark,
          dotHeight: 6,
          dotWidth: 10,
        ),
      ),
    );
  }
}
