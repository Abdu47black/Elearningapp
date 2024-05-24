import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';

class MShadowStyle {
  static final vertialProductShadow = BoxShadow(
      color: MColors.containerBackground.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 50,
      offset: const Offset(0, 2));
  static final horizontalProductShadow = BoxShadow(
      color: MColors.containerBackground.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
