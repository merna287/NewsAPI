import 'package:new_test/model/article.dart';

abstract class AppState{}
class InitialState extends AppState {}
class LoadedState extends AppState{
  final List<Article> x;

  LoadedState({required this.x});
}
class ErrorState extends AppState{
  final String errorMassege;

  ErrorState({required this.errorMassege});
   
}
class LoadingState extends AppState{}