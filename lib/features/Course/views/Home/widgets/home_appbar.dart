import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/features/Course/views/Home/widgets/shimmer.dart';
import 'package:fidel/features/personlization/controllers/user_controller.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return MAppBar(
        title: Column(
          children: [
            Text(MTexts.homeAppBarTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .apply(color: MColors.textWhite)),
            Obx(() {
              if (controller.profileLoading.value) {
                // Dispaly a shimmer  loader while user profile is being loaded
                return const MShimmerEffect(width: 80, height: 15);
              } else {
                return Text(controller.user.value.fullName,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: MColors.textWhite));
              }
            }),
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
