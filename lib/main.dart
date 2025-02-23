import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test/manager/cubit.dart';
import 'package:new_test/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
   MyApp({super.key});
   
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>AppCubit()..getNews(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        
      ),
    );
  }
}
