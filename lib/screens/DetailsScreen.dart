import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test/manager/cubit.dart';

class DetailsScreen extends StatelessWidget {

  final String name;
  final String image;
  final Color color;
  final Widget widget;
  const DetailsScreen(
      {super.key,

      required this.name,
      required this.color,
      required this.widget,
      required this.image});

  @override
  Widget build(BuildContext context) { 
    return BlocProvider(
      create: (context)=> AppCubit()..getNews(category: name),
      child: Scaffold(
        appBar: AppBar(
          title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: color,
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [widget],
        ),
      ),
    );
  }
}
