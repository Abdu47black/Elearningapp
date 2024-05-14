import 'package:fidel/util/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:fidel/util/theme/Custom_themes/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root our application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MAppTheme.lightheme,
        darkTheme: MAppTheme.darktheme,
        home: const Scaffold(
          backgroundColor: MColors.cremecolor,
          body: Center(
            child: CircularProgressIndicator(color: Colors.black87),
          ),
        ));
  }
}
