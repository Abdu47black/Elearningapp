import 'package:flutter/material.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class MCourseTitleDuration extends StatelessWidget {
  const MCourseTitleDuration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Size.sm),
        const SizedBox(height: Size.sm),
        Text('Introduction to Flutter Development',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: Size.md),
        Text(
          'Duration : 4 weeks (10 hours per week)',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: Size.md),
        const Text(
          'About this course',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: Size.md),
        const ReadMoreText(
          'Welcome to "Introduction to Flutter Development"! This course is designed for beginners who want to learn how to build beautiful and functional mobile applications using Flutter, Google\'s UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. ',
          trimMode: TrimMode.Line,
          style: TextStyle(fontSize: 16),
          trimLines: 2,
          colorClickableText: Colors.white,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: Size.sm),
      ],
    );
  }
}
