import 'package:fidel/common/widgets/Container/rounded_container.dart';
import 'package:fidel/common/widgets/Texts/price_text.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class MPriceTagWithDiscount extends StatelessWidget {
  const MPriceTagWithDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      MRoundedContainer(
          radius: Size.sm,
          backgroundColor: MColors.cremecolor.withOpacity(0.8),
          padding: const EdgeInsets.symmetric(
              horizontal: Size.sm, vertical: Size.sm),
          child: Text('25%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: MColors.black))),
      const SizedBox(width: Size.spaceBtwItems),
      Text('\$249',
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .apply(decoration: TextDecoration.lineThrough)),
      const SizedBox(width: Size.spaceBtwItems),
      const MCoursePriceText(
        price: '175',
        isLarge: true,
        color: MColors.primaryColor,
      )
    ]);
  }
}
