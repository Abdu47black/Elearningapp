import 'package:flutter/material.dart';

class MChipTheme {
  MChipTheme._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
    checkmarkColor: Colors.white,
  );
  static ChipThemeData darkChipThemeData = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      selectedColor: Colors.blue,
      labelStyle: const TextStyle(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25));
}
