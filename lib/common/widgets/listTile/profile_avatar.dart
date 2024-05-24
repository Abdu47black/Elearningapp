import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class MProfieAvatar extends StatelessWidget {
  const MProfieAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          maxRadius: 50,
          backgroundImage: AssetImage(MImages.profileImage),
        ),
        Text(
          'Perbytes',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MColors.white),
        ),
        Text(
          'support@perbaytes.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: MColors.white),
        ),
      ],
    );
  }
}
