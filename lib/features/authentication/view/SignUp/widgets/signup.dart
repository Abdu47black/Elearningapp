import 'package:fidel/common/styles/spacing_styles.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/agree_to_terms.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/signup_form.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/signup_title.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: Mspacingstyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            // Signup Title
            SignUpTitle(),

            //email ,password login btn and forgot password

            SignUpForm(),

            // Footer

            AgreeToTerms(),
          ],
        ),
      ),
    );
  }
}
