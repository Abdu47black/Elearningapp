import 'package:fidel/common/widgets/Course/vertical_product.dart';
import 'package:fidel/common/widgets/Container/primary_header_container.dart';
import 'package:fidel/common/widgets/Layouts/grid_layout.dart';
import 'package:fidel/common/widgets/Texts/section_heading.dart';
import 'package:fidel/features/Course/views/Home/widgets/category_section.dart';
import 'package:fidel/features/Course/views/Home/widgets/home_appbar.dart';
import 'package:fidel/features/Course/views/Home/widgets/progress_container.dart';
import 'package:fidel/features/Course/views/Home/widgets/slider_section.dart';

import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

// lib/features/Course/views/Home/widgets/slider_section.dart

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const MPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      SizedBox(height: Size.defaultSpace),
                      //Home App bar
                      HomeAppBar(),

                      SizedBox(height: Size.defaultSpace),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: Size.buttonWidth),
                    const ProgressCard(),
                    const CategorySection(),
                    // const FeaturedCourseSection(),
                    const SliderSection(),

                    const SizedBox(height: Size.spaceBtwItems),
                    const MSectionHeading(title: 'Popular Courses'),

                    const SizedBox(height: Size.spaceBtwItems),
                    MGridLayout(
                        itemCount: 6,
                        itemBuilder: (_, index) =>
                            const MProductCardVertical()),

                    // LatestCoursesSection(),
                  ],
                )
              ],
            ),

            // ListView.builder(
            //     itemCount: 6,
            //     scrollDirection: Axis.horizontal,

            //     itemBuilder: (_, index) {
            //       return Column(
            //         children: [
            //           Container(
            //             height: 20,
            //             width: 20,
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(12)),
            //           )
            //         ],
            //       );
            //     })
          ],
        ),
      ),
    ));
  }
}
