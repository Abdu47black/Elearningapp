import 'package:fidel/common/widgets/Texts/course_title_text.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/enums.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MCourseTitleWithVerifcationIcon extends StatelessWidget {
  const MCourseTitleWithVerifcationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconcolor = MColors.primaryColor,
    this.textAligns = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconcolor;
  final TextAlign? textAligns;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MCourseTitleText(
            maxLines: maxLines,
            title: title,
            color: textColor,
            textAlign: textAligns,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: Size.xs),
        const Icon(Iconsax.verify5,
            color: MColors.primaryColor, size: Size.iconxs)
      ],
    );
  }
}

        //   child: Text('Programming',
        //       overflow: TextOverflow.ellipsis,
        //       maxLines: 1,
        //       style: Theme.of(context).textTheme.labelMedium),
        // ),