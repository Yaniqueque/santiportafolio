import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';
import 'package:santiportafolio/models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
      ],
    );
  }
}
