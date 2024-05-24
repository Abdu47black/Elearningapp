import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/listTile/profile_avatar.dart';
import 'package:fidel/common/widgets/listTile/settings_menu_title.dart';
import 'package:fidel/features/personlization/views/profile/profile.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              child: Column(
            children: [
              MAppBar(
                  title: Text(
                'Account',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .apply(color: MColors.white),
              )),
              const SizedBox(
                height: Size.spaceBtwSections,
              ),
              const MProfieAvatar(),
              const SizedBox(
                height: Size.sm,
              ),
              // ---body secion

              Container(
                height: 680,
                decoration: BoxDecoration(
                    color: Mhelper.isDarkMode(context)
                        ? MColors.containerBackground
                        : MColors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(25))),
                child: Column(children: [
                  const SizedBox(height: Size.spaceBtwInputFields),
                  const SizedBox(height: Size.spaceBtwItems),
                  MSettingsMenuTile(
                      // icon: Iconsax.safe_home,
                      title: 'Favorite',
                      trailing: IconButton(
                          onPressed: () {
                            debugPrint('Hey Mom!');
                          },
                          icon: const Icon(Iconsax.arrow_right_3))),
                  MSettingsMenuTile(
                    // icon: Iconsax.shopping_cart,
                    title: 'Edit Account',

                    trailing: IconButton(
                        onPressed: () {
                          Get.to(const ProfileScreen());
                        },
                        icon: const Icon(Iconsax.arrow_right_3)),
                  ),
                  MSettingsMenuTile(
                      // icon: Iconsax.bank,
                      title: 'Settings and Privacy',
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.arrow_right_3))),
                  MSettingsMenuTile(
                      // icon: Iconsax.notification,
                      title: 'Help',
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.arrow_right_3))),
                  const SizedBox(height: Size.appBarHeight),
                  Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStateColor.transparent),
                              onPressed: () {},
                              child: Text(MTexts.logout,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall)))),
                ]),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
