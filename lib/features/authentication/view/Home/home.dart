// Home Screen

import 'package:fidel/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 855.0,
          width: 377.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage(MImages.onBoardingScreenImage1),
                width: 377.0,
                height: 855.0,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 855.0,
                    width: 377.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
