import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test/manager/state.dart';
import 'package:new_test/model/article.dart';
import 'package:new_test/network/api_service.dart';

class AppCubit extends Cubit<AppState> {
  ApiService apiService = ApiService();
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  getNews({String category= "business"}) async {
    emit(LoadingState());
    try {
      var json = await apiService.get(
          endPionts:
              'v2/top-headlines?country=us&category=$category&apiKey=0cb9e1f5b5bb49379e5984706121b91b');
      List<Article> articles = [];
      for (var i in json["articles"]) {
        articles.add(Article(
            image: i["urlToImage"] , name: i["title"] , desc: i["description"] ));
      }
      emit(LoadedState(x: articles));
    } on Exception catch (error) {
      emit(ErrorState(errorMassege: error.toString()));
    }
  }
}//https://newsapi.org/
 