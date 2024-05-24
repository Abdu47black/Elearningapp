import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MCircularImage extends StatelessWidget {
  const MCircularImage({
    super.key,
    this.fit,
    required this.image,
    required this.isNetworkImage,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = Size.sm,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(Size.sm),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (Mhelper.isDarkMode(context)
                  ? MColors.containerBackground
                  : MColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Image(
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor),
      ),
    );
  }
}
