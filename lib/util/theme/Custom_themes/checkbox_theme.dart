import 'package:flutter/material.dart';

class McheckBoxTheme {
  McheckBoxTheme._();
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      checkColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    },
  ), fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.blue;
    } else {
      return const Color.fromARGB(255, 90, 58, 58);
    }
  }));

  static CheckboxThemeData darkCheckBoxThemeData = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        } else {
          return Colors.white;
        }
      }));
}
