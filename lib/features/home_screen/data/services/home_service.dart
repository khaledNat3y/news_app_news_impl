
import 'dart:developer';

import 'package:news_app_news_impl/core/models/news_top_head_lines_model.dart';
import 'package:news_app_news_impl/core/networking/dio_helper.dart';

import '../../../../core/networking/api_constants.dart';

class HomeScreenServices {
  Future<NewsTopHeadLinesModel> getTopHeadLines() async {
    try {
      final response = await DioHelper.getRequest(
        endPoint: ApiConstants.topHeadLines,
        query: {"country": "us", "apiKey": ApiConstants.apiKey},
      );
      return response;
    }catch(e) {
      log(e.toString());
      throw e.toString();
    }
  }
}
