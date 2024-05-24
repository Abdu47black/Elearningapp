import 'package:fidel/common/widgets/Container/rounded_container.dart';
import 'package:fidel/common/widgets/ReuseableWidgets/progress_duration.dart';
import 'package:fidel/common/widgets/Texts/progress_card_header_title.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MRoundedContainer(
      height: 150,
      width: 380,
      backgroundColor: Mhelper.isDarkMode(context)
          ? MColors.containerBackground
          : MColors.accent,
      child: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            MProgressHeaderTitle(),
            MProgressDuration(completed: '46min', outof: '/60min'),
            SizedBox(height: Size.lg),
            LinearProgressIndicator(backgroundColor: Colors.orange)
          ],
        ),
      ),
    );
  }
}
