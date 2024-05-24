import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/icons/circular_icon.dart';
import 'package:fidel/features/Course/views/CourseDetail/widgets/expansion_tile.dart';
import 'package:fidel/features/Course/views/CourseDetail/widgets/pricetag_with_discount.dart';
import 'package:fidel/features/Course/views/CourseDetail/widgets/ratings_share.dart';
import 'package:fidel/features/Course/views/CourseDetail/widgets/title_course_duration.dart';
import 'package:fidel/features/Course/views/Course_Playing/course_playing.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/devices/device_utility.dart';
// lib/features/Course/views/CourseScreen/widgets/listview.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const MAppBar(
            showBackArrow: true,
            actions: [
              MCircularWidget(
                icon: Iconsax.heart5,
                backgroundColor: Colors.transparent,
                color: Colors.red,
              )
            ],
          ),
          Container(
            height: MDeviceUtils.getScreenHeight() - 600,
            width: MDeviceUtils.getScreenWidth(),
            decoration: const BoxDecoration(
              color: MColors.cremecolor,
            ),
            child: Image.asset(MImages.coursebanner),
          ),
          Padding(
            padding: const EdgeInsets.all(Size.lg),
            child: Column(
              children: [
                const MRatingsShare(),
                const MPriceTagWithDiscount(),
                const MCourseTitleDuration(),
                const MExpansionTile(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(const CoursePlayingScreen());
                      },
                      child: const Text('Enroll Now')),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
