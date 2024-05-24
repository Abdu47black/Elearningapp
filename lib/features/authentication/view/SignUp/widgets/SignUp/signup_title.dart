import 'package:fidel/util/constants/sizes.dart';
import 'package:fidel/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({
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
              MTexts.signUp,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: Size.spaceBtwSections,
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                MTexts.freesignup,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(
              width: 60.0,
            )
          ],
        ),
        const SizedBox(height: Size.sm),
      ],
    );
  }
}
