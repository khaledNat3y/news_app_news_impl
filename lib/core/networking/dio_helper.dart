import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app_news_impl/core/models/news_top_head_lines_model.dart';
import 'package:news_app_news_impl/core/networking/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  static Dio? dio;

  static initDio() {
    dio ??= Dio(
        BaseOptions(
          baseUrl: ApiConstants.apiBaseUrl,
          receiveDataWhenStatusError: true,
        ),
      );

    dio!.interceptors.add(PrettyDioLogger());
  }

  static Future<NewsTopHeadLinesModel> getRequest({required String endPoint, Map<String, dynamic>? query}) async {
    try {
      Response response = await dio!.get(endPoint, queryParameters: query);
      log(response.data.toString());
     if(response.statusCode == 200) {
       return NewsTopHeadLinesModel.fromJson(response.data);
     }else {
       throw response.data['message'];
     }
    }catch(e) {
      log(e.toString());
      rethrow;
    }

  }
}
