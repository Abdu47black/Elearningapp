import 'package:fidel/features/Course/views/CourseScreen/course.dart';
import 'package:fidel/features/Course/views/Search/search_screen.dart';
import 'package:fidel/features/Course/views/Home/home.dart';
import 'package:fidel/features/Course/views/WishList/wishlist.dart';
import 'package:fidel/features/personlization/views/settings/settings.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = Mhelper.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 60.0,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: dark
                ? MColors.white.withOpacity(0.1)
                : MColors.textWhite.withOpacity(0.1),
            indicatorColor: dark
                ? MColors.white.withOpacity(0.1)
                : MColors.white.withOpacity(1.0),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
              NavigationDestination(icon: Icon(Iconsax.book), label: 'Course'),
              NavigationDestination(
                  icon: Icon(Iconsax.search_favorite), label: 'Search'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'WishList'),
              NavigationDestination(
                  icon: Icon(Iconsax.profile_circle), label: 'Account'),
            ],
          ),
        ),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const CoursesScreen(),
    const SearchScreen(),
    const WishListScreen(),
    const SettingsScreen()
  ];
}
