import 'package:flutter/material.dart';

class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.blue),
          textStyle: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0))));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.blue),
          textStyle: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0))));
}
