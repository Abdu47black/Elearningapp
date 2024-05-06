import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder(
                  // future: AuthHelper.getName(),
                  builder: (context, snapshot) {
                    return Text(
                      'Hi ${snapshot.data ?? 'Shirajul'},',
                    );
                  },
                  future: null,
                ),
                const Text(MTexts.homeAppBarSubTitle)
              ],
            ),
            const CircleAvatar(
                backgroundColor: Colors.white, child: Icon(Iconsax.activity3))
          ],
        )
      ],
    );
  }
}
