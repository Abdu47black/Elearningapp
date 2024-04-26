import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class logindivider extends StatelessWidget {
  const logindivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: Size.spaceBtwSections,
      ),
      Divider(
        color: dark ? Mcolors.dark : Mcolors.accent,
      )
    ]);
  }
}
