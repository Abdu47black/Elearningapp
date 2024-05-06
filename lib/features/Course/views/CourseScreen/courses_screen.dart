import 'package:fidel/common/widgets/Search%20bar/search_bar.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Course",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.profile1,
                color: MColors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MSearchBar(),
            SizedBox(
              height: 100,
              width: 200,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 10; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
