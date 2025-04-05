import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:news_app_news_impl/core/helpers/spacing.dart';
import 'package:news_app_news_impl/core/models/news_top_head_lines_model.dart';
import 'package:news_app_news_impl/core/theming/app_theme.dart';
import 'package:news_app_news_impl/generated/assets.dart';

class ArticleCardWidget extends StatelessWidget {
  final Article article;
  const ArticleCardWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(article.title ?? "", style: AppTheme.font18BlackSemiBold, maxLines: 2,),
              verticalSpace(4),
              Text("${article.author} . ${DateFormat("yyyy-MM-dd - kk:mm").format(article.publishedAt!)}", style: AppTheme.font14lightBrownRegular,),
            ],
          ),
        ),
        Expanded(child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
            child: article.urlToImage == null ? Image.asset(Assets.imagesNoNewsImage) : CachedNetworkImage(imageUrl: article.urlToImage!)))
      ],
    );
  }
}
