class InputValidator {
  static String? validateArabicName(String? value) {
    final regex = RegExp(r'^[\u0600-\u06FF\s]{1,30}$');
    final parts = value!.trim().split(' ');

    if (!regex.hasMatch(value) || value.isEmpty || parts.length != 4) {
      return 'أدخل أسمك الرباعي بالشكل المطلوب';
    }
    return null;
  }

  static String? validateArabic(String? value) {
    final regex = RegExp(r'^[\u0600-\u06FF\s]+$');

    if (!regex.hasMatch(value!) || value.isEmpty) {
      return 'أدخل المحتوى المطلوب بشكل صحيح';
    }
    return null;
  }

  static String? validateNumbers(String? value) {
    final regex = RegExp(r'^\d+(\.\d+)?$');
    if (!regex.hasMatch(value!) || value.isEmpty) {
      return 'يجب أن يحتوي المدخل على نسبة أخر فصل دراسي فقط';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    final regex = RegExp(r'^\+?[0-9]{9,15}$');

    if (!regex.hasMatch(value!) || value.isEmpty) {
      return 'رقم الجوال غير صالح';
    }
    return null;
  }

  static String? validateMixedInput(String? value) {
    final regex = RegExp(r'^[\u0600-\u06FFa-zA-Z0-9\s!"(),.\/:;<>?\{}|~\-]+$');

    if (!regex.hasMatch(value!) || value.isEmpty) {
      return 'أدخل المحتوى بشكل صجيح';
    }
    return null;
  }

  static String? validateusername(String? value) {
    final regex = RegExp(r'^\+?[0-9]{9,15}$');

    if (!regex.hasMatch(value!) || value.isEmpty) {
      return 'رقم الجوال غير صالح';
    }
    return null;
  }
}
