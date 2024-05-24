import 'package:flutter/material.dart';

class MCoursePriceText extends StatelessWidget {
  const MCoursePriceText({
    super.key,
    required this.price,
    this.isLarge = false,
    this.maxlines = 1,
    this.currencySign = '\$',
    this.lineThrough = false,
    this.color,
  });
  final String currencySign, price;
  final int maxlines;
  final bool isLarge;
  final bool lineThrough;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              color: color,
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              color: color,
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
