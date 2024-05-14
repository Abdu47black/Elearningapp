import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';

import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
                width: Size.iconlg,
                height: Size.iconlg,
                image: AssetImage(MImages.facebook)),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: Size.spaceBtwSections,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
                width: Size.iconlg,
                height: Size.iconlg,
                image: AssetImage(MImages.google)),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
