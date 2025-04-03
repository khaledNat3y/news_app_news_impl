import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/features/home_screen/widgets/article_card_widget.dart';
import 'package:news_app_news_impl/features/home_screen/widgets/custom_category_item_widget.dart';
import 'package:news_app_news_impl/features/home_screen/widgets/top_head_line_item_widget.dart';
import 'package:news_app_news_impl/generated/locale_keys.g.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 32.w),
          child: SizedBox(
            height: 40.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                CustomCategoryItemWidget(title: LocaleKeys.travel),
                CustomCategoryItemWidget(title: LocaleKeys.technology),
                CustomCategoryItemWidget(title: LocaleKeys.entertainment),
                CustomCategoryItemWidget(title: LocaleKeys.entertainment),
                CustomCategoryItemWidget(title: LocaleKeys.entertainment),
              ],
            ),
          ),
        ),
        verticalSpace(24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: TopHeadLineItemWidget(
            title: "News",
            authorName: "khaled",
            date: "May 1, 2025",
            imageUrl:
                "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
          ),
        ),
        verticalSpace(24),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
              itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 24.h),
              child: ArticleCardWidget(
                title: 'Apple Unveils Revolutionary AI Features ',
                name: 'khaled',
                date: 'May 3, 2023;',
                imageUrl:
                "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
              ),
            );
          }),
        ),
      ],
    );
  }
}
