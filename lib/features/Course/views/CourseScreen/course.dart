import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/AppBar/tab_bar.dart';
import 'package:fidel/common/widgets/Course/course_card.dart';
import 'package:fidel/common/widgets/icons/cart_counter_icon.dart';
import 'package:fidel/common/widgets/ReuseableWidgets/search_bar.dart';
import 'package:fidel/common/widgets/Layouts/grid_layout.dart';
import 'package:fidel/common/widgets/Texts/section_heading.dart';
import 'package:fidel/features/Course/views/CourseScreen/widgets/category_tab.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MAppBar(
            title: Text('Course',
                style: Theme.of(context).textTheme.headlineMedium),
            actions: [
              MCartCounterIcon(
                iconcolor: MColors.white,
                onpressed: () => debugPrint('hello'),
              )
            ]),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: Mhelper.isDarkMode(context)
                    ? MColors.darkerPurple
                    : MColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(Size.sm),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///---search bar
                      const SizedBox(height: Size.defaultSpace),
                      const MSearchBar(mplaceholder: 'Find Courses'),
                      const SizedBox(height: Size.spaceBtwSections),
                      // ---- Featured Courses

                      MSectionHeading(
                          title: 'Featured Courses', onPressed: () {}),
                      const SizedBox(height: Size.spaceBtwItems / 1.5),
                      MGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const MCourseCard(showBorder: true);
                          })
                    ],
                  ),
                ),
                bottom: const MTabBar(tabs: [
                  Tab(child: Text('UI/UX')),
                  Tab(child: Text('DESIGN')),
                  Tab(child: Text('Mathematics')),
                  Tab(child: Text('Cyber Security')),
                  Tab(child: Text('Machine learning')),
                ]),
              )
            ];
          },
          body: const TabBarView(
            children: [
              MCatergoryTab(),
              MCatergoryTab(),
              MCatergoryTab(),
              MCatergoryTab(),
              MCatergoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}










/*
*/
