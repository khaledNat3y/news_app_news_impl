import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'generated/codegen_loader.g.dart';
import 'news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: Locale('ar'),
        startLocale:  Locale('ar'),
        useFallbackTranslations: true,
        assetLoader: CodegenLoader(),
        child: NewsApp()
    ),
  );
}


