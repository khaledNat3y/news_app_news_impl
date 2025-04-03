import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/core/helpers/spacing.dart';

import '../../../core/theming/app_theme.dart';

class TopHeadLineItemWidget extends StatelessWidget {
  final String title;
  final String authorName;
  final String date;
  final String? imageUrl;

  const TopHeadLineItemWidget({
    super.key,
    required this.title,
    required this.authorName,
    required this.date,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child:
                imageUrl != null
                    ? CachedNetworkImage(
                      width: double.infinity,
                      height: 206.h,
                      imageUrl: imageUrl ?? "",
                      fit: BoxFit.cover,
                    )
                    : Image.asset(
                      width: double.infinity,
                      height: 206.h,
                      "assets/images/no_news_image.png",
                      fit: BoxFit.fill,
                    ),
          ),
          verticalSpace(16),
          Text(title, style: AppTheme.font18BlackSemiBold,),
          verticalSpace(12),
          Text("$authorName . $date", style: AppTheme.font14lightBrownRegular,)
        ],
      ),
    );
  }
}
