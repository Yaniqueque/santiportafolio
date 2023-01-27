import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(height: 10),
        const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Text(
            "Skills",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                  label: "Flutter", percentage: 0.7),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                  label: "Firebase", percentage: 0.6),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                  label: "SQL Server", percentage: 0.65),
            ),
          ],
        ),
      ],
    );
  }
}
