import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_news_impl/features/home_screen/logic/home_cubit.dart';
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
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getTopHeadLines();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          final articles = state.news.articles;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(16.h),
                  // Categories Horizontal List
                  SizedBox(
                    height: 48.h, // Fixed height for categories
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 4, // Update with actual categories count
                      separatorBuilder: (_, __) => horizontalSpace(12.w),
                      itemBuilder: (_, index) => CustomCategoryItemWidget(
                        title: _getCategoryTitle(index),
                      ),
                    ),
                  ),
                  verticalSpace(24.h),
                  // Top Headlines Horizontal List
              CarouselSlider(
                options: CarouselOptions(
                  height: 380.h,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  padEnds: false,
                  disableCenter: true,
                ),
                items: articles?.map((article) => SizedBox(
                  width: 300.w,
                  child: TopHeadLineItemWidget(article: article, onTap: (){
                  },),
                )
                ).toList(),
              ),
                  verticalSpace(24.h),
                  // Articles Vertical List
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: articles!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 24.h),
                        child: ArticleCardWidget(
                          article: articles[index],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        }else if(state is HomeNoResults) {
          return Center(child: Text(LocaleKeys.no_results.tr()));

        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  String _getCategoryTitle(int index) {
    const categories = [
      LocaleKeys.travel,
      LocaleKeys.technology,
      LocaleKeys.entertainment,
      LocaleKeys.entertainment,
    ];
    return categories[index];
  }

  String _formatDate(DateTime? date) {
    return date != null
        ? DateFormat('MMM d, y').format(date)
        : 'Unknown Date';
  }
}