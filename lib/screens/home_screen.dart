import 'package:flutter/material.dart'; 
import 'package:new_test/widget/article_listview.dart';
import 'package:new_test/widget/category_listview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "API News",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryListview()),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                            "General News ",
                            style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
              )),
          ArticleListview(),
        ],
      ),
    );
  }

  
}
