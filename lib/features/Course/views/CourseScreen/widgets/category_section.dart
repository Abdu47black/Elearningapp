import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class MCategorySection extends StatelessWidget {
  const MCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Choose your Course',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              width: 95,
            )
          ],
        ),
        const SizedBox(
          height: Size.spaceBtwSections,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text('All'),
            ),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  disabledForegroundColor: MColors.white,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text('Popular'),
            ),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  disabledForegroundColor: MColors.white,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text('New'),
            ),
          ],
        ),
      ],
    );
  }
}
