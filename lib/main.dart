import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/networking/dio_helper.dart';
import 'generated/codegen_loader.g.dart';
import 'news_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  DioHelper.initDio();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        useFallbackTranslations: true,
        assetLoader: CodegenLoader(),
        child: NewsApp(),
    ),
  );
}


