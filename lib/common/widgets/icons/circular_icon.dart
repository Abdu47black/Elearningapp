import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class MCircularWidget extends StatelessWidget {
  const MCircularWidget(
      {super.key,
      this.icon,
      this.width,
      this.height,
      this.size,
      this.color,
      this.backgroundColor,
      this.onPressed});
  final double? width, height, size;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = Mhelper.isDarkMode(context);
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: dark
                ? MColors.containerBackground.withOpacity(0.8)
                : MColors.light.withOpacity(0.8)),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          ),
        ));
  }
}
