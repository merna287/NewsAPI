import 'package:flutter/material.dart';
import 'package:new_test/data.dart';
import 'package:new_test/model/category.dart';
import 'package:new_test/widget/category_item.dart';

class CategoryListview extends StatefulWidget {
  const CategoryListview({super.key});

  @override
  State<CategoryListview> createState() => _CategoryListviewState();
}
List<Category> data = Data;
class _CategoryListviewState extends State<CategoryListview> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem(category: data[index],);
        },
        itemCount: data.length,
      ),
    );
  }
}
