import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/core/helpers/spacing.dart';
import 'package:news_app_news_impl/core/models/news_top_head_lines_model.dart';

import '../../../core/theming/app_theme.dart';

class TopHeadLineItemWidget extends StatelessWidget {
  final Article? article;
  final void Function()? onTap;
  const TopHeadLineItemWidget({
    super.key, required this.article, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child:
            article?.urlToImage != null
                    ? CachedNetworkImage(
                      width: double.infinity,
                      height: 206.h,
                      imageUrl: article?.urlToImage ?? "",
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
          Text(article!.title!, style: AppTheme.font18BlackSemiBold, maxLines: 3,),
          verticalSpace(12),
          Text("${article?.author} . May 1, 2025", style: AppTheme.font14lightBrownRegular, maxLines: 1,)
        ],
      ),
    );
  }
}
