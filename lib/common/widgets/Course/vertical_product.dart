import 'package:fidel/common/styles/shadows.dart';
import 'package:fidel/common/widgets/Container/rounded_container.dart';
import 'package:fidel/common/widgets/Images/first_rounded_image.dart';
import 'package:fidel/common/widgets/Texts/brandtitlewith_verifcarion.dart';
import 'package:fidel/common/widgets/icons/circular_icon.dart';
import 'package:fidel/common/widgets/Texts/m_course_title_text.dart';
import 'package:fidel/common/widgets/Texts/price_text.dart';
import 'package:fidel/features/Course/views/CourseDetail/course_detail.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MProductCardVertical extends StatelessWidget {
  const MProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Mhelper.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(const CourseDetails());
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [MShadowStyle.vertialProductShadow],
            borderRadius: BorderRadius.circular(25),
            color: dark ? MColors.containerBackground : MColors.white),
        child: Column(
          children: [
            MRoundedContainer(
                height: 172,
                padding: const EdgeInsets.all(8),
                backgroundColor:
                    dark ? MColors.containerBackground : MColors.accent,
                child: Stack(
                  children: [
                    const MRoundedImage(
                      imageurl: MImages.reactCourse,
                    ),
                    Positioned(
                      top: 12,
                      child: MRoundedContainer(
                        radius: Size.sm,
                        backgroundColor:
                            MColors.secondaryColor.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: Size.sm, vertical: Size.sm),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: MColors.black),
                        ),
                      ),
                    ),
                    const Positioned(
                        right: 0,
                        top: 0,
                        child: MCircularWidget(
                          //backgroundColor: Colors.transparent,
                          icon: Iconsax.heart5,
                          color: Colors.red,
                        ))
                  ],
                )),
            // const SizedBox(height: Size.xl),
            const Padding(
                padding: EdgeInsets.all(Size.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MCourseTitleText(
                        title: 'Java Full Course', smallSize: true),
                    SizedBox(height: Size.sm),
                    MCourseTitleWithVerifcationIcon(
                      title: 'Web Development',
                    ),
                  ],
                )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MCoursePriceText(price: '56.6'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: MColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Size.cardRadiusMd),
                        bottomRight: Radius.circular(Size.courseImageRadius)),
                  ),
                  child: const SizedBox(
                      width: Size.iconlg,
                      height: Size.iconlg,
                      child: Icon(Iconsax.shopping_cart5, color: Colors.white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
