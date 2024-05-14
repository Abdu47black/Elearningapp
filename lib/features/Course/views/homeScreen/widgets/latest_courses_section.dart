import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LatestCoursesSection extends StatelessWidget {
  const LatestCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Latest Courses',
                style: Theme.of(context).textTheme.headlineMedium),
            Text('View All',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(color: MColors.primaryColor)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        AlignedGridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          itemCount: 6,
          itemBuilder: (ctx, index) {
            return SizedBox(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0.1,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.asset(MImages.cousrseImage),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            // placeholder: 'Course Image',
                            // image:
                            MImages.cousrseImage, height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, right: 8, left: 8, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 42,
                            child: Text(
                                // textAlign: TextAlign.start,
                                'Data Strucutures and Algorithm'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            MTexts.sellingPrice,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: MColors.primaryColor, width: 1.5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text('Buy Now'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
      ],
    );
  }
}
