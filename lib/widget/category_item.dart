import 'package:flutter/material.dart';
import 'package:new_test/model/category.dart';
import 'package:new_test/screens/DetailsScreen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(id: category.id, name: category.name, color: category.color, api: category.widget, image: category.image,),
            ),
          );
          },
          child: CircleAvatar(
            radius: 55,
            backgroundImage:AssetImage(category.image),
            child: Center(child: Text(category.name , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),)),
          ),
        ),
      );
  }
}