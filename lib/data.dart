import 'package:flutter/material.dart';
import 'package:new_test/model/category.dart';
import 'package:new_test/widget/article_listview.dart'; 
var Data = [
 Category(id: "c1", image: "images/pexels-photo-518543.webp", name: "News", color: Colors.blueGrey, widget: ArticleListview()),
 Category(id: "c2", image: "images/pexels-photo-health.jpeg", name: "Health", color: Colors.blue, widget: ArticleListview()),
 Category(id: "c3", image: "images/pexels-photo-sport.webp", name: "Sport" , color: Colors.green, widget: ArticleListview()),
 Category(id: "c4", image: "images/pexels-photo-study.webp", name: "Study", color: Colors.brown, widget: ArticleListview()),
 Category(id: "c5", image: "images/istockphoto-fashion.jpg", name: "Fashion" , color: Colors.deepPurpleAccent, widget: ArticleListview()),
];
 