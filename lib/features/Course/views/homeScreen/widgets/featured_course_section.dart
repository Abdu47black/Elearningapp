import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class FeaturedCourseSection extends StatelessWidget {
  const FeaturedCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(HomeController());
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Featured Courses',
                style: Theme.of(context).textTheme.headlineMedium),
            Text('View All',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: MColors.primaryColor)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10),
                height: 130,
                width: size.width * .8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black.withOpacity(.050),
                  ),
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      children: [
                        Container(
                          height: constraints.maxHeight,
                          width: constraints.maxWidth * .4,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.1),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            image: const DecorationImage(
                              image: AssetImage(MImages.google),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'The history of a Man',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: MColors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const Text(
                                    'By ${'marks'}',
                                    style: TextStyle(
                                      color: MColors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Perbaytes',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .apply(color: MColors.primaryColor),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '2r',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .apply(color: MColors.primaryColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: constraints.maxWidth * .5,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: MColors.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 5,
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Icon(
                                          Icons.shopping_cart,
                                          size: 20,
                                          color: MColors.primaryColor,
                                        ),
                                        Text('Add to cart',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .apply(color: MColors.black)),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    );
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
