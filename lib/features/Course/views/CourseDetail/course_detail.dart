import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/features/Course/views/CourseDetail/widgets/course_header.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:fidel/util/devices/device_utility.dart';
// lib/features/Course/views/CourseScreen/widgets/listview.dart
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const MAppBar(
            showBackArrow: true,
          ),
          Container(
            height: MDeviceUtils.getScreenHeight() - 600,
            width: MDeviceUtils.getScreenWidth(),
            decoration: const BoxDecoration(
              color: MColors.cremecolor,
            ),
            child: Image.asset(MImages.coursebanner),
          ),
          Container(
              height: MDeviceUtils.getScreenHeight() / 2 + 100,
              width: MDeviceUtils.getScreenWidth(),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  color: MColors.containerBackground),
              child: Padding(
                padding: const EdgeInsets.all(Size.lg),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: Size.sm),
                    const MCousreDetailHeader(
                      productname: MTexts.productname,
                      productprice: MTexts.productprice,
                    ),
                    const SizedBox(height: Size.md),
                    Text(
                      '6h 14min    -  24 lessons',
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
                    const Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        'Integer laoreet, tortor sit amet ultricies tincidunt, risus quam molestie velit, quis varius lectus nulla ultricies enim. Mauris in placerat quam. '),
                    // for (int i = 0; i < 4; i++)
                    //   Padding(
                    //     padding: const EdgeInsets.all(18.0),
                    //     child: Container(
                    //         color: MColors.greybg,
                    //         child: const ListTile(
                    //           leading: Icon(Icons.add),
                    //           title: Text(
                    //             'GFG title',
                    //           ),
                    //           trailing: Icon(Icons.done),
                    //           subtitle: Text('This is subtitle'),
                    //           selected: true,
                    //         )),
                    //   )
                    const ExpansionTile(
                      title: Text('hey mom'),
                      backgroundColor: MColors.containerBackground,
                      children: [
                        ListTile(
                          leading: Icon(Iconsax.note_square4),
                          title: Text('Ustaz Adil'),
                          trailing: Icon(Iconsax.menu),
                        ),
                        ListTile(
                          leading: Icon(Iconsax.note_square4),
                          title: Text('Ustaz Adil'),
                          trailing: Icon(Iconsax.menu),
                        ),
                        ListTile(
                          leading: Icon(Iconsax.note_square4),
                          title: Text('Ustaz Adil'),
                          trailing: Icon(Iconsax.menu),
                        ),
                        ListTile(
                          title: Text('Ustaz Adil'),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
