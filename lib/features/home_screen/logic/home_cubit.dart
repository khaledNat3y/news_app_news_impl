import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app_news_impl/core/models/news_top_head_lines_model.dart';
import 'package:news_app_news_impl/core/networking/dio_helper.dart';
import 'package:news_app_news_impl/features/home_screen/data/services/home_service.dart';

import '../../../core/networking/api_constants.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> getTopHeadLines() async {
    try {
      emit(HomeLoading());
      NewsTopHeadLinesModel news =  await HomeScreenServices().getTopHeadLines();
      if(news.articles!.isEmpty) {
        emit(HomeNoResults());
        return;
      }
      emit(HomeSuccess(news));
    }catch(e) {
      emit(HomeError(e.toString()));
    }
  }

}
