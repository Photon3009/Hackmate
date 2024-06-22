import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/configurations/router/router.gr.dart';

class HackathonThemesGrid extends StatelessWidget {
  const HackathonThemesGrid({super.key});

  @override
  Widget build(BuildContext context) => GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding * 3,
          vertical: kPadding * 2,
        ),
        itemCount:
            kHackathonThemesList.length > 6 ? 6 : kHackathonThemesList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kPadding * 2,
          crossAxisSpacing: kPadding * 2,
          childAspectRatio: 3,
        ),
        itemBuilder: (BuildContext context, int index) => ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff222126),
          ),
          onPressed: () {
            context.router.push(
              HackathonRouter(
                children: [
                  CategoryHackathonRoute(
                    categoryName: kHackathonThemesList[index],
                  ),
                ],
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(
              bottom: kPadding,
              left: kHackathonThemesList[index] == 'Blockchain'
                  ? 0
                  : kPadding / 2,
              right: kHackathonThemesList[index] == 'Blockchain'
                  ? 0
                  : kPadding / 2,
              top: kPadding,
            ),
            child: Row(
              mainAxisSize:
                  MainAxisSize.min, // Adjusts size according to content
              children: [
                // Image according to the theme name
                Image.asset(
                  getThemeImageUrl(kHackathonThemesList[index]),
                  width: 30, // Adjust the size as needed
                  height: 30, // Error widget if image fails to load
                ),
                SizedBox(
                    width: kHackathonThemesList[index] == 'Blockchain'
                        ? 1
                        : 3), // Space between image and text
                Text(
                  kHackathonThemesList[index],
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
}

String getThemeImageUrl(String themeName) {
  switch (themeName) {
    case 'Web Dev':
      return Assets.images.webd.path;
    case 'App Dev':
      return Assets.images.app1.path;
    case 'ML':
      return Assets.images.mlai.path;
    case 'Blockchain':
      return Assets.images.blockd.path;
    case 'AR/VR':
      return Assets.images.arvr.path;
    case 'Cloud':
      return Assets.images.cloud.path;
    default:
      return Assets.images.webd.path;
  }
}
