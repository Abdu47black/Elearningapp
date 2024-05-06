import 'package:fidel/common/styles/spacing_styles.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login/login_divider.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login/login_footer.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login/login_form.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login/login_title.dart';

import 'package:fidel/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    bool dark = Mhelper.isDardMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: Mspacingstyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            //  login title
            const LoginTitle(),

            //email ,password login btn and forgot password

            const LoginForm(),

            // divider
            logindivider(dark: dark),

            //footer
            const LoginFooter()
          ],
        ),
      ),
    );
  }
}
