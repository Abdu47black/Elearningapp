import 'package:fidel/util/theme/Custom_themes/app_bar.dart';
import 'package:fidel/util/theme/Custom_themes/bottom_sheet_theme.dart';
import 'package:fidel/util/theme/Custom_themes/checkbox_theme.dart';
import 'package:fidel/util/theme/Custom_themes/chip_theme.dart';
import 'package:fidel/util/theme/Custom_themes/eleveted_button.dart';
import 'package:fidel/util/theme/Custom_themes/outlined_button_theme.dart';
import 'package:fidel/util/theme/Custom_themes/text_themes.dart';
import 'package:fidel/util/theme/Custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class MAppTheme {
  static var lightheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    fontFamily: 'poppins',
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTextTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    checkboxTheme: McheckBoxTheme.lightCheckBoxTheme,
    chipTheme: MChipTheme.lightChipThemeData,
    inputDecorationTheme: MTextFieldTheme.lightTextFormField,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: MbottomSheetTheme.lightBottomSheetThemeData,
  );

  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    fontFamily: 'poppins',
    scaffoldBackgroundColor: const Color(0xFF0E0C32),
    textTheme: MTextTheme.darkTextTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MAppBarTheme.darkappBarTheme,
    checkboxTheme: McheckBoxTheme.darkCheckBoxThemeData,
    chipTheme: MChipTheme.darkChipThemeData,
    inputDecorationTheme: MTextFieldTheme.darkTextFormField,
    bottomSheetTheme: MbottomSheetTheme.darkBottomSheetThemeData,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
