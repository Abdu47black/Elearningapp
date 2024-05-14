import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class MVerticalListViewBuilder extends StatelessWidget {
  const MVerticalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: Size.sm),
              child: Column(
                children: [
                  Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          color: MColors.containerBackground,
                          borderRadius: BorderRadius.circular(25)),
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              height: 90,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.1),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                image: const DecorationImage(
                                  image: AssetImage(MImages.google),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: Size.lg),
                            Column(
                              children: [
                                const SizedBox(height: Size.xl),
                                Text('Product Design V1.0 ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                                const SizedBox(height: Size.sm),
                                Text('Robertson Connie',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                const SizedBox(height: Size.sm),
                                Text('16 hours',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .apply(color: Colors.orange))
                              ],
                            )
                          ],
                        );
                      }))
                ],
              ),
            );
          }),
    );
  }
}
