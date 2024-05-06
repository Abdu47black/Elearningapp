import 'package:carousel_slider/carousel_slider.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(HomeController());
    final size = MediaQuery.sizeOf(context);
    List<String> sliderImages = [
      'assets/images/others/i1.jpg',
      'assets/images/others/i2.jpg',
      'assets/images/others/i5.jpg',
      'assets/images/others/i4.jpg',
    ];
    return Container(
      width: size.width * .90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 15,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: sliderImages.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: size.width * .90,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          sliderImages[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                    autoPlay: true,
                    height: 100,
                    enlargeCenterPage: true,
                    enlargeFactor: .3,
                    onPageChanged: (index, reason) {})),
            const SizedBox(
              height: 10,
            ),
            PageViewDotIndicator(
              // currentItem: controller.selectedSliderIndex.value,
              currentItem: 3,
              count: sliderImages.length,
              unselectedColor: MColors.btnprimary.withOpacity(.2),
              selectedColor: MColors.btnprimary,
              size: const Size(10, 10),
              margin: const EdgeInsets.only(right: 1, left: 1),
            ),
          ],
        ),
      ),
    );
  }
}
