import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';

class MSectionHeading extends StatelessWidget {
  const MSectionHeading({
    super.key,
    this.textcolor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textcolor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(title,
            style:
                Theme.of(context).textTheme.titleLarge!.apply(color: textcolor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: const TextStyle(color: MColors.primaryColor),
              ))
      ]),
    );
  }
}
