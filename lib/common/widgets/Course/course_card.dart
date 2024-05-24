import 'package:fidel/common/widgets/Container/rounded_container.dart';
import 'package:fidel/common/widgets/Images/circlular_image.dart';
import 'package:fidel/common/widgets/Texts/brandtitlewith_verifcarion.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MCourseCard extends StatelessWidget {
  const MCourseCard({
    super.key,
    required this.showBorder,
  });
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MRoundedContainer(
          padding: const EdgeInsets.all(Size.sm),
          showBorder: showBorder,
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              Flexible(
                child: MCircularImage(
                  isNetworkImage: false,
                  image: MImages.science,
                  backgroundColor: Colors.transparent,
                  overlayColor: Mhelper.isDarkMode(context)
                      ? MColors.white
                      : MColors.black,
                ),
              ),
              const SizedBox(width: Size.spaceBtwItems / 2),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const MCourseTitleWithVerifcationIcon(
                        title: 'Web Development'),
                    Text(
                      '26 courses',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
