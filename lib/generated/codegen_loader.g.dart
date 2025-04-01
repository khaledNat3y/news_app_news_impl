// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "authentication": {
    "name": "الاسم",
    "email": "البريد الإلكتروني",
    "password": "كلمة المرور",
    "confirm_password": "تأكيد كلمة المرور",
    "login": "تسجيل الدخول",
    "register": "التسجيل",
    "forget_password": "نسيت كلمة المرور"
  },
  "home": "الصفحة الرئيسية",
  "settings": "الإعدادات",
  "language": "اللغة",
  "english": "الإنجليزية",
  "arabic": "العربية"
};
static const Map<String,dynamic> _en = {
  "authentication": {
    "name": "Name",
    "email": "Email",
    "password": "Password",
    "confirm_password": "Confirm Password",
    "login": "Login",
    "register": "Register",
    "forget_password": "Forget Password"
  },
  "home": "Home",
  "settings": "Settings",
  "language": "Language",
  "english": "English",
  "arabic": "Arabic"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
