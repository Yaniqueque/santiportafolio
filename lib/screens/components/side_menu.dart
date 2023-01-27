import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Column(children: [
          const MyInfo(),
          Expanded(
            //  child: Container(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "Residence",
                    text: "Dominican Republic",
                  ),
                  const AreaInfoText(
                    title: "City",
                    text: "Santo Domingo, DN",
                  ),
                  const AreaInfoText(
                    title: "Age",
                    text: "26",
                  ),
                  const Skills(),
                  const SizedBox(height: 10),
                  const Coding(),
                  const Knowledges(),
                  const Divider(),
                  TextButton(
                    onPressed: () {
                      // const String url =
                      //     "https://pub.dev/packages/url_launcher";
                      // void _launchURL() async {
                      //   if (!await launchUrl(Uri.parse(url)))
                      //     throw 'Could not launch $url';
                      //   _launchURL();
                      // }
                    },
                    child: FittedBox(
                      child: Row(
                        children: const [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Icon(
                            Icons.download,
                            color: animationColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ]),
      );
}
