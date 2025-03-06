import 'package:flutter/material.dart';
import 'package:new_test/model/category.dart';
import 'package:new_test/widget/article_listview.dart'; 
var Data = [
 Category(name: "News", image: "images/pexels-photo-518543.webp", color: Colors.blueGrey, widget: ArticleListview()),
 Category(name: "Health", image: "images/pexels-photo-health.jpeg",  color: Colors.blue, widget: ArticleListview()),
 Category(name: "science" , image: "images/pexels-general.jpeg",  color: Colors.deepPurpleAccent, widget: ArticleListview()),
 Category(name: "sports" , image: "images/pexels-photo-sport.webp", color: Colors.green, widget: ArticleListview()),
Category(name: "entertainment", image: "images/pexels-entertainment.jpeg",  color: Colors.brown, widget: ArticleListview()),
 Category(name: "technology" , image: "images/pexels-photo-546819.jpeg",  color: Colors.tealAccent, widget: ArticleListview()),

];
 