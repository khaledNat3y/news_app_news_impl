import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/core/helpers/spacing.dart';
import 'package:news_app_news_impl/core/theming/app_theme.dart';
import 'package:news_app_news_impl/generated/assets.dart';

class ArticleCardWidget extends StatelessWidget {
  final String title;
  final String name;
  final String date;
  final String? imageUrl;
  const ArticleCardWidget({super.key, required this.title, required this.name, required this.date, required this.imageUrl});

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
              Text(title, style: AppTheme.font18BlackSemiBold,),
              verticalSpace(4),
              Text("$name . $date", style: AppTheme.font14lightBrownRegular,)
          
            ],
          ),
        ),
        Expanded(child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
            child: imageUrl == null ? Image.asset(Assets.imagesNoNewsImage) : CachedNetworkImage(imageUrl: imageUrl ?? "")))
      ],
    );
  }
}
