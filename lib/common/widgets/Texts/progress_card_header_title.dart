import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';

class MProgressHeaderTitle extends StatelessWidget {
  const MProgressHeaderTitle({
    super.key,
    this.learnedtoday = 'Learned Today',
    this.myCourses = 'My Courses',
    this.color = MColors.primaryColor,
  });
  final String? learnedtoday;
  final String? myCourses;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(learnedtoday!, style: Theme.of(context).textTheme.headlineSmall),
        TextButton(
          onPressed: () {},
          child: Text(
            myCourses!,
            style: TextStyle(fontSize: 13, color: color),
            //  style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
