import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:santiportafolio/screens/screens.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class SocialNetworksLinks extends StatelessWidget {
  const SocialNetworksLinks({
    Key? key,
    required this.svg,
    this.onPressed,
  }) : super(key: key);

  final String svg;
  final void Function()? onPressed;
  final String url =
      "https://www.linkedin.com/in/santiago-miguel-matos-escobar-485a2418a/";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: secondaryColor,
      child: IconButton(
          //hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            onPressed;
            _launchURL();
          },
          icon: SvgPicture.asset(svg)),
    );
  }

  void _launchURL() async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
    print('Se oprime');
  }
}
