import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MAppBar(
        title: Column(
          children: [
            Text(MTexts.homeAppBarTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .apply(color: MColors.textWhite)),
            Text(MTexts.homeAppBarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: MColors.textWhite)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.profile_2user,
                color: MColors.white,
              ))
        ]);
  }
}
