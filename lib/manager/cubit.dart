import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test/manager/state.dart';
import 'package:new_test/model/article.dart';
import 'package:new_test/network/api_service.dart';

class AppCubit extends Cubit<AppState> {
  ApiService apiService = ApiService();
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  getNews() async {
    emit(LoadingState());
    try {
      var json = await apiService.get(
          endPionts:
              'v2/top-headlines?sources=techcrunch&apiKey=0cb9e1f5b5bb49379e5984706121b91b');
      List<Article> articles = [];
      for (var i in json["articles"]) {
        articles.add(Article(
            image: i["urlToImage"], name: i["title"], desc: i["description"]));
      }
      emit(LoadedState(x: articles));
    } catch (error) {
      emit(ErrorState(errorMassege: error.toString()));
    }
  }
}
/* 
class AppCubit extends Cubit <AppState> {
  ApiService apiService = ApiService();
  AppCubit():super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  getNws({String category= "general"})async{
    emit(LoadingState()); // دي االلي بتديني state
   try {
     var json = await apiService.get(endpoint: 'top-headlines?country=us&category=$category&apiKey=6b0c10e58ff54f4caa1e9f252329dc30');
     List<ArticalModel> articles = [];
     for (var item in json) {
       articles.add(ArticalModel(title: item.title, description: item.description, urlToImage: item.urlToImage));
     }
     emit(LoadedState(x: articles));
   }  catch (error) {
     emit(ErrorState(errorMessage: error.toString()));
     // TODO
   }

  }
//  BlocProvider , BlocBuilder, BlocListener
}
 */