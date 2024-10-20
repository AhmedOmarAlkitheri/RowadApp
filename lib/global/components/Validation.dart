class InputValidator {
  static String? validateArabicName(String? value) {
    final regex = RegExp(r'^[\u0600-\u06FF\s]{1,30}$');
    final parts = value!.trim().split(' ');

    if (!regex.hasMatch(value) || value.isEmpty || parts.length < 4) {
      return 'أدخل اسمك الرباعي بالشكل المطلوب';
    }
    return null;
  }

  static String? validateGuardianName(String? value) {
    final regex = RegExp(r'^[\u0600-\u06FF\s]{1,30}$');
    final parts = value!.trim().split(' ');

    if (!regex.hasMatch(value) || value.isEmpty || parts.length < 3) {
      return 'أدخل اسم ولي امرك الثلاثي وما فوق بالشكل المطلوب';
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
      return 'يجب أن يحتوي المدخل على نسبة آخر فصل دراسي فقط';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    final regex = RegExp(r'^(77|78|70|71|73)[0-9]{7}$'); 

  if (value == null || value.isEmpty) {
    return 'يرجى إدخال رقم الجوال';
  }

  if (!regex.hasMatch(value)) {
    return 'يجب أن يكون بداية الرقم 77 أو 78 أو 73 أو 70 أو 71';
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
    final regex = RegExp(r'^(77|78|70|71|73)[0-9]{7}$'); 

  if (value == null || value.isEmpty) {
    return 'يرجى إدخال رقم الجوال';
  }

  if (!regex.hasMatch(value)) {
    return 'يجب أن يكون بداية الرقم 77 أو 78 أو 73 أو 70 أو 71';
  }
    return null;
  }
    static String? validateNotEmpty(String? value) {
   
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }
}
