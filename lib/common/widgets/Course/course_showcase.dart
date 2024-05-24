import 'package:fidel/common/widgets/Container/rounded_container.dart';
import 'package:fidel/common/widgets/Course/course_card.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MCourseShowCases extends StatelessWidget {
  const MCourseShowCases({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MRoundedContainer(
      showBorder: true,
      borderColor: MColors.accent,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: Size.spaceBtwItems),
      child: Column(
        children: [
          const MCourseCard(showBorder: false),
          Row(
            children: images
                .map((image) => courseTopImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget courseTopImageWidget(String image, context) {
    return Expanded(
      child: MRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(Size.md),
        margin: const EdgeInsets.all(Size.sm),
        backgroundColor:
            Mhelper.isDarkMode(context) ? MColors.darkerPurple : MColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
