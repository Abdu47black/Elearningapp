import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mvalidator {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    final emailRegExp = RegExp('[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}');
    if (!emailRegExp.hasMatch(value)) {
      return 'invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //check for passowrd length
    if (value.length < 6) {
      return 'password must be at least 6 characters long';
    }
    //check for uppecase letters
    if (!value.contains(RegExp(r'[A-z]'))) {
      return 'Password must contain at least one Uppercase letter.';
    } //check for a special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one Special character.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone nubmer is required';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone number format(10 digits required )';
    }
  }
}
