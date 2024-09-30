import 'package:flutter/material.dart';

class TimePickerHelper {
  static Future<TimeOfDay?> selectTime(
      BuildContext context, TimeOfDay? initialTime) async {
    return await showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
    );
  }
}
