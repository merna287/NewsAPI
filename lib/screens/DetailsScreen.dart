import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final Color color;
  final Widget api;
  const DetailsScreen(
      {super.key,
      required this.id,
      required this.name,
      required this.color,
      required this.api, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name , style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: color,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [api],
      ),
    );
  }
}
