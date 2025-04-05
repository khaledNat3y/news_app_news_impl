import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/locale_keys.g.dart';
import '../theming/app_colors.dart';
import '../theming/app_theme.dart';

/// Truncate a string to a maximum number of words
String truncateToFirstNWords(String inputString, int wordLimit) {
  List<String> words = inputString.split(' ');
  if (words.length <= wordLimit) {
    return inputString;
  }
  return words.sublist(0, wordLimit).join(' ');
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
