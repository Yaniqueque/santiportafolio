import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(
          text: "Flutter, Dart",
        ),
        KnowledgeText(
          text: "Git Knowledge",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.done_outline,
          color: animationColor,
        ),
        const SizedBox(
          width: defaultPadding,
        ),
        Text(text),
      ],
    );
  }
}
