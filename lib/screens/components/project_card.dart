import 'package:flutter/material.dart';
import 'package:santiportafolio/responsive.dart';
import 'package:santiportafolio/screens/screens.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/models.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: textStyleDefault,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 2 : 4,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              _launchURL();
            },
            child: Text(
              "Check it out >>",
              style: TextStyle(color: animationColor),
            ),
          )
        ],
      ),
    );
  }

  void _launchURL() async {
    if (!await launchUrl(Uri.parse(project.link!))) {
      throw 'Could not launch $project.name';
    }
  }
}
