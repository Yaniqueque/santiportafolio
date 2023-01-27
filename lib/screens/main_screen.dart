import 'package:flutter/material.dart';
import 'package:santiportafolio/responsive.dart';
import 'package:santiportafolio/screens/screens.dart';

import 'components/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    //Se esconde el appbar en el desktop
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: ((context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu),
                    )),
              ),
            ),
      drawer: const SideMenu(),
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // 50% Cada uno
          if (Responsive.isDesktop(context))
            const Expanded(
                //Esto toma 75% (2+7 = 9)
                flex: 2,
                child: SideMenu()),
          const SizedBox(
            width: defaultPadding,
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...children!,
                ],
              ),
            ),
          ),
          const SizedBox(
            width: defaultPadding,
          ),
        ]),
      ),
    );
  }
}
