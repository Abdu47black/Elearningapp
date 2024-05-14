import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class MHorizontalListViewBuilder extends StatelessWidget {
  const MHorizontalListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MColors.containerBackground),
                height: 100,
                width: 250,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      children: [
                        Container(
                          height: constraints.maxHeight,
                          width: constraints.maxHeight,
                          decoration: const BoxDecoration(
                            color: MColors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage(MImages.google),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Text('Course Title'),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}
