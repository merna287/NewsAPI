import 'package:flutter/material.dart';

class Category {
  final String id;
  final String image;
  final String name;
  final Color color;
  final Widget widget;

  Category({required this.id, required this.image, required this.name, required this.color, required this.widget});
}
