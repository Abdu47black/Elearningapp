import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: Size.spaceBtwSections,
        ),
        Row(
          children: [
            Text(
              MTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              width: 60.0,
            ),
          ],
        ),
        const SizedBox(height: Size.sm),
      ],
    );
  }
}
