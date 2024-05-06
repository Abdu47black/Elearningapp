import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class MSearchBar extends StatelessWidget {
  const MSearchBar({
    super.key,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });
  // final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Size.defaultSpace),
      child: Container(
          width: double.infinity,
          height: Size.appBarHeight,
          padding: const EdgeInsets.all(Size.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: MColors.containerBackground,
          ),
          child: const Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: Size.sm),
              Text('Find Course',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200)),
            ],
          )),
    );
  }
}
