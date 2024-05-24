import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:fidel/util/constants/sizes.dart';

class MRoundedContainer extends StatelessWidget {
  const MRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = Size.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = MColors.borderprimary,
    this.backgroundColor = MColors.white,
    this.padding,
    this.margin,
    this.child,
  });
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
