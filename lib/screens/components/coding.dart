import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Coding",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        AnimatedLinearProgressIndicator(label: 'Dart', percentage: 0.7),
        AnimatedLinearProgressIndicator(label: 'C#', percentage: 0.5),
        AnimatedLinearProgressIndicator(label: 'HTML', percentage: 0.5),
        AnimatedLinearProgressIndicator(label: 'CSS', percentage: 0.4),
        AnimatedLinearProgressIndicator(label: 'JavaScript', percentage: 0.4),
        AnimatedLinearProgressIndicator(label: 'SQL Server', percentage: 0.7),
      ],
    );
  }
}
