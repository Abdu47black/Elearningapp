import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MCartCounterIcon extends StatelessWidget {
  const MCartCounterIcon({
    super.key,
    required this.iconcolor,
    required this.onpressed,
  });
  final Color? iconcolor;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onpressed,
            icon: Icon(Iconsax.shopping_bag5, size: 20, color: iconcolor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: MColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              '2',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: MColors.white, fontSizeFactor: 0.8),
            )),
          ),
        )
      ],
    );
  }
}
