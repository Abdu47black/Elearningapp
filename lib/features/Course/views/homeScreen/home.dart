import 'package:fidel/common/widgets/CustomShapes/Container/primary_header_container.dart';
import 'package:fidel/features/Course/views/homeScreen/widgets/category_section.dart';
import 'package:fidel/features/Course/views/homeScreen/widgets/featured_course_section.dart';
import 'package:fidel/features/Course/views/homeScreen/widgets/home_appbar.dart';
import 'package:fidel/features/Course/views/homeScreen/widgets/latest_courses_section.dart';
import 'package:fidel/features/Course/views/homeScreen/widgets/slider_section.dart';

import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

// lib/features/Course/views/Home/widgets/slider_section.dart

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                MPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      SizedBox(height: Size.defaultSpace),
                      //Home App bar
                      HomeAppBar(),

                      SizedBox(height: Size.defaultSpace),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    children: [
                      SizedBox(height: Size.buttonWidth),
                      SliderSection(),
                      CategorySection(),
                      FeaturedCourseSection(),
                      LatestCoursesSection(),
                    ],
                  ),
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
