import 'package:flutter/material.dart';

class Validation {
  static String? validateNotEmpty(String? value) {
    // print('the value $value');
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }
}
