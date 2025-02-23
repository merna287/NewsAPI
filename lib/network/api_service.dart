import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://newsapi.org/";
  final dio = Dio();
   get({required String endPionts}) async {
    var response = await dio.get("$_baseUrl$endPionts");
    return response.data;
  }
  post({required String endPionts}) async {
    var response = await dio.post("$_baseUrl$endPionts");
    return response.data;
  }
}
void main(List<String> args) {
  
}
