import 'package:fidel/common/widgets/Course/course_showcase.dart';
import 'package:fidel/common/widgets/Course/vertical_product.dart';
import 'package:fidel/common/widgets/Layouts/grid_layout.dart';
import 'package:fidel/common/widgets/Texts/section_heading.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class MCatergoryTab extends StatelessWidget {
  const MCatergoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                const MCourseShowCases(
                  images: [
                    MImages.cousrseImage,
                    MImages.science,
                    MImages.success
                  ],
                ),
                const MSectionHeading(title: "You might like"),
                const SizedBox(height: Size.spaceBtwItems),
                MGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const MProductCardVertical())
              ],
            ),
          ),
        ]);
  }
}
