import 'package:flutter/material.dart';
import 'package:santiportafolio/screens/screens.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        color: secondaryColor,
        child: Column(children: const [
          Spacer(
            flex: 2,
          ),
          CircleAvatar(
            radius: 50,
            foregroundImage: AssetImage("/IMG_8815.jpg"),
          ),
          Spacer(),
          _Padding(),
          Text(
            "Santiago Miguel Matos Escobar",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
          ),
          _Padding(),
          Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          // Spacer(
          //   flex: 1,
          // ),
          SocialNetworksLinks(
            svg: 'linkedin(1).svg',
          ),
        ]),
      ),
    );
  }
}

class _Padding extends StatelessWidget {
  const _Padding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(top: 3.0));
  }
}
