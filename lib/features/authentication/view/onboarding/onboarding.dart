import 'package:fidel/features/authentication/controllers/on_boarding_controller/on_boarding_controller.dart';
import 'package:fidel/features/authentication/view/Login/login.dart';
import 'package:fidel/features/authentication/view/onboarding/widgets/onboarding_pageview.dart';
import 'package:fidel/features/authentication/view/onboarding/widgets/pageindicator.dart';
import 'package:fidel/features/authentication/view/onboarding/widgets/skipbtn.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      //horizonatl scrollabe pages
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBorardingPage(
                image: MImages.onBoardingScreenImage1,
                title: MTexts.onBoardingTitle1,
                subtitle: MTexts.onBoardingSubTitle1,
              ),
              OnBorardingPage(
                image: MImages.onBoardingScreenImage2,
                title: MTexts.onBoardingTitle2,
                subtitle: MTexts.onBoardingSubTitle2,
              ),
              LastonBoardingScreen(
                image: MImages.onBoardingScreenImage3,
                title: MTexts.onBoardingTitle3,
                subtitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip button
          const skipbtn(),
          //page indicator
          const Pageindicator()
        ],
        // smooth page indicator
      ),
    );
  }
}

class LastonBoardingScreen extends StatelessWidget {
  const LastonBoardingScreen({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
  });
  final String title, image, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSize.defaultSpace),
      child: Column(children: [
        Image.asset(
            width: Mhelper.screenWidth() * 0.8,
            height: Mhelper.screenHeight() * 0.5,
            image),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: MSize.spaceBtwItems,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: MSize.buttonHeight,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 150.0,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(MTexts.signUp))),
            const SizedBox(
              width: MSize.spaceBtwItems,
            ),
            SizedBox(
                width: 150.0,
                child: OutlinedButton(
                    onPressed: () => Get.offAll(const LoginScreen()),
                    child: const Text(MTexts.signIn))),
          ],
        )
      ]),
    );
  }
}
