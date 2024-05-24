import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/ReuseableWidgets/search_bar.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: Size.lg),
          MAppBar(
            showBackArrow: true,
            title: Text('Search',
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          const SizedBox(height: Size.md),
          const MSearchBar(
              icon: Iconsax.search_normal1, mplaceholder: 'Search Courses'),
          SizedBox(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: Size.lg),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 35,
                            width: 50,
                            decoration: BoxDecoration(
                                color: MColors.greybg,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text('Flutter',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall))),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
