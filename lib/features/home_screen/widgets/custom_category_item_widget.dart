import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_theme.dart';

class CustomCategoryItemWidget extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const CustomCategoryItemWidget({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56.r),
          ),
          side: BorderSide(color: AppColors.secondaryColor),
          backgroundColor: AppColors.transparent,
        ),
        child: Text(
          title.tr(),
          style: AppTheme.font14BlackSemiBold,
        ),
      ),
    );
  }
}
