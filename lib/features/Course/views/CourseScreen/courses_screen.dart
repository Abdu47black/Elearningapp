import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/Search%20bar/search_bar.dart';
import 'package:fidel/features/Course/views/CourseDetail/course_detail.dart';
import 'package:fidel/features/Course/views/CourseScreen/widgets/category_section.dart';
import 'package:fidel/features/Course/views/CourseScreen/widgets/listview.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MAppBar(
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.profile))
              ],
              title: Text('Course',
                  style: Theme.of(context).textTheme.headlineMedium),
              leadingIcon: Iconsax.profile1),
          const SizedBox(height: Size.defaultSpace),
          //search bar in flutter
          const MSearchBar(
            mplaceholder: 'Find Course',
          ),
          const SizedBox(height: Size.spaceBtwSections),

          //horizontal list view builder for catergories
          const MHorizontalListViewBuilder(),
          const SizedBox(height: Size.spaceBtwItems),
          const MCategorySection(),
          const SizedBox(
            height: Size.spaceBtwSections,
          ),
          const MVerticalListViewBuilder(
            itemcount: 3,
          )
        ],
      ),
    );
  }
}

class MVerticalListViewBuilder extends StatelessWidget {
  const MVerticalListViewBuilder({
    super.key,
    required this.itemcount,
  });
  final int itemcount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: itemcount,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: Size.sm),
              child: Column(
                children: [
                  Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          color: MColors.containerBackground,
                          borderRadius: BorderRadius.circular(25)),
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              height: constraints.maxHeight / 2,
                              width: constraints.maxWidth * 0.3,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.1),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                image: const DecorationImage(
                                  image: AssetImage(MImages.google),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: Size.lg),
                            GestureDetector(
                              onTap: () {
                                Get.to(const CourseDetails());
                              },
                              child: Column(
                                children: [
                                  const SizedBox(height: Size.xl),
                                  Text('Product Design V1.0 ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  const SizedBox(height: Size.sm),
                                  Text('Robertson Connie',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                  const SizedBox(height: Size.sm),
                                  Text('  \$ 184   16 hours',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .apply(color: Colors.orange))
                                ],
                              ),
                            )
                          ],
                        );
                      }))
                ],
              ),
            );
          }),
    );
  }
}
