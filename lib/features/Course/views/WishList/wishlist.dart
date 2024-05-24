import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/Course/vertical_product.dart';
import 'package:fidel/common/widgets/Layouts/grid_layout.dart';
import 'package:fidel/common/widgets/icons/circular_icon.dart';
import 'package:fidel/features/Course/views/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppBar(
            title: Text('Wishlist',
                style: Theme.of(context).textTheme.headlineMedium),
            actions: [
              MCircularWidget(
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  icon: Iconsax.add)
            ]),
        body: SingleChildScrollView(
          child: Column(children: [
            MGridLayout(
                itemCount: 3,
                itemBuilder: (_, index) => const MProductCardVertical())
          ]),
        ));
  }
}
