import 'package:fidel/common/widgets/CustomShapes/Container/primary_header_container.dart';
import 'package:fidel/features/Course/Home/widgets/home_appbar.dart';
import 'package:fidel/features/Course/Home/widgets/learning_card.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const MPrimaryHeaderContainer(
            child: Column(
              children: [
                SizedBox(height: Size.defaultSpace),
                //Home App bar
                HomeAppBar(),
                SizedBox(height: Size.spaceBtwSections),
                //learning progress Tracker
                LearningCard(),
              ],
            ),
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
    ));
  }
}
