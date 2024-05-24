import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/devices/device_utility.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: TabBar(
      isScrollable: true,
      indicatorColor: MColors.primaryColor,
      unselectedLabelColor: MColors.accent,
      labelColor: Mhelper.isDarkMode(context)
          ? MColors.white
          : MColors.containerBackground,
      tabs: tabs,
    ));
  }

  @override
  //  implement preferredSize
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
