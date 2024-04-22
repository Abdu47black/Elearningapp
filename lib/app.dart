import 'package:fidel/features/authentication/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:fidel/util/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MAppTheme.lightheme,
      darkTheme: MAppTheme.darktheme,
      home: const OnboardingScreen(),
    );
  }
}
