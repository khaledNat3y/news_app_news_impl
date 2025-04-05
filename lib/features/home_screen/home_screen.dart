import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/core/networking/dio_helper.dart';
import 'package:news_app_news_impl/core/theming/app_colors.dart';
import 'package:news_app_news_impl/core/theming/app_theme.dart';
import 'package:news_app_news_impl/features/home_screen/logic/home_cubit.dart';
import 'package:news_app_news_impl/features/home_screen/widgets/home_screen_body.dart';

import '../../core/helpers/functions.dart';
import '../../generated/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(appBar: buildHomeScreenAppBar(), body: HomeScreenBody()),
    );
  }
}
