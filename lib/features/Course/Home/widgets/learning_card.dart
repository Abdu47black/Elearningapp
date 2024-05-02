import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LearningCard extends StatelessWidget {
  const LearningCard({
    super.key,
    this.icon,
    this.showBorder = true,
    this.showBackgroudColor = true,
  });

  final Icons? icon;
  final bool showBackgroudColor, showBorder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Size.defaultSpace),
      child: Container(
        width: MDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(Size.md),
        decoration: const BoxDecoration(
            color: MColors.darkgrey,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Row(children: [
              Text(
                MTexts.learnedToday,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(width: 120.0),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    MTexts.mycourses,
                    style: Theme.of(context).textTheme.headlineSmall,
                  )),
            ]),
            const SizedBox(
              height: Size.defaultSpace,
            ),
            Text(
              MTexts.learnedmin,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: Size.defaultSpace,
            ),
            LinearPercentIndicator(
              lineHeight: 10.0,
              barRadius: const Radius.circular(12),
              width: MDeviceUtils.getScreenWidth() * 0.7,
              animation: true,
              animationDuration: 2000,
              percent: 0.9,
              backgroundColor: Colors.white,
              progressColor: Color.fromARGB(255, 218, 112, 54),
            ),
          ],
        ),
      ),
    );
  }
}
