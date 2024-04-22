import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBorardingPage extends StatelessWidget {
  const OnBorardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSize.defaultSpace),
      child: Column(children: [
        Image.asset(
            width: Mhelper.screenWidth() * 0.8,
            height: Mhelper.screenHeight() * 0.6,
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
        )
      ]),
    );
  }
}
