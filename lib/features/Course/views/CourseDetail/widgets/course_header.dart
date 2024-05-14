import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class MCousreDetailHeader extends StatelessWidget {
  const MCousreDetailHeader({
    super.key,
    required this.productname,
    required this.productprice,
  });
  final String productname;
  final String productprice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          productname,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: Size.appBarHeight,
        ),
        Text(productprice,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: MColors.btnprimary)),
      ],
    );
  }
}
