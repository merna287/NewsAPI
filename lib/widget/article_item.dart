import 'package:flutter/material.dart';
import 'package:new_test/model/article.dart';
import 'package:new_test/widget/expadable_text.dart';

class ArticleItem extends StatelessWidget {
  final Article m;
  const ArticleItem({super.key, required this.m});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 180,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadiusDirectional.vertical(top: Radius.circular(40)),
              image: DecorationImage(
                image: NetworkImage(
                    m.image?? "https://cdn.pixabay.com/photo/2025/02/09/17/58/cycling-9394894_1280.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ExpadableText(
              text:
                  m.name,
              isDescription: false),
          ExpadableText(
              text:
                  m.desc ?? "No description",
              isDescription: true),
          SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}
