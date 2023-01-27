import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: ((context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(label, style: const TextStyle(color: Colors.white)),
                      Text("${(value * 100).toInt()}%"),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: animationColor,
                    backgroundColor: darkColor,
                  ),
                ],
              ))),
    );
  }
}
