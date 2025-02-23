import 'package:flutter/material.dart';

class ExpadableText extends StatefulWidget {
  final String text;
  final bool isDescription;
  const ExpadableText({super.key, required this.text, required this.isDescription});

  @override
  State<ExpadableText> createState() => _ExpadableTextState();
}

class _ExpadableTextState extends State<ExpadableText> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            widget.text,
            maxLines: isExpanded ? null : (widget.isDescription? 2 : 1),
            overflow: isExpanded? TextOverflow.visible : TextOverflow.ellipsis,
            style: TextStyle(color: widget.isDescription? Colors.grey : Colors.black),
            ),
        ),
      ],
    );
  }
}
