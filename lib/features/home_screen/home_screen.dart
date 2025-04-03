import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/core/theming/app_colors.dart';
import 'package:news_app_news_impl/core/theming/app_theme.dart';
import 'package:news_app_news_impl/features/home_screen/widgets/home_screen_body.dart';

import '../../generated/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(appBar: buildHomeScreenAppBar(), body: HomeScreenBody());
  }

  AppBar buildHomeScreenAppBar() {
    return AppBar(
      backgroundColor: AppColors.secondaryColor,
      toolbarHeight: 68.h,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Text(
          LocaleKeys.explore.tr(),
          style: AppTheme.font32BlackSemiBold,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColors.black, size: 28.sp),
          ),
        ),
      ],
    );
  }
}
