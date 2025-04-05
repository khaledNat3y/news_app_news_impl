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
  "home": "الصفحة الرئيسية",
  "settings": "الإعدادات",
  "language": "اللغة",
  "english": "الإنجليزية",
  "arabic": "العربية",
  "explore": "استكشاف",
  "travel": "السفر",
  "technology": "التقنية",
  "entertainment": "الترفيه",
  "cancel": "الغاء",
  "search_result": "نتائج البحث",
  "search": "بحث",
  "business": "التجارة",
  "no_results": "لا توجد نتائج"
};
static const Map<String,dynamic> _en = {
  "home": "Home",
  "settings": "Settings",
  "language": "Language",
  "english": "English",
  "arabic": "Arabic",
  "explore": "Explore",
  "travel": "Travel",
  "technology": "Technology",
  "entertainment": "Entertainment",
  "cancel": "Cancel",
  "search_result": "Search Result",
  "search": "Search",
  "business": "Business",
  "no_results": "No results found"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
