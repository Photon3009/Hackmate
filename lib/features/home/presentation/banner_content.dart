import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../configurations/configurations.dart';

class BannerContent extends StatelessWidget {
  const BannerContent({
    super.key,
    required this.heading,
    required this.subHeading,
    required this.buttonText,
    required this.imgUrl,
    required this.onButtonPressed,
  });

  final String heading;
  final String subHeading;
  final String buttonText;
  final String imgUrl;
  final String? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(
              kPadding * 4, kPadding * 2, kPadding * 4, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              kButtonRadius,
            ),
            color: Theme.of(context).primaryColor,
          ),
          child: SizedBox(
            height: kBannerHeight,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kButtonRadius),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Background Image
                  CachedNetworkImage(
                    imageUrl: imgUrl,
                    fadeInCurve: Curves.easeIn,
                    fit: BoxFit.cover,
                  ),
                  // Content
                  Padding(
                    padding: const EdgeInsets.all(
                      kPadding * 4,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              SizedBox(
                                width: 180,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor:
                                        Theme.of(context).primaryColor,
                                  ),
                                  onPressed: () {
                                    if (onButtonPressed == null) {
                                      return;
                                    } else if (onButtonPressed!
                                        .contains('launch')) {
                                      launchUrlString(
                                        onButtonPressed!
                                            .replaceFirst('launch:', ''),
                                        mode: LaunchMode.externalApplication,
                                      );
                                    }
                                  },
                                  child: Text(
                                    buttonText,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: kPadding,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: kPadding,
        ),
        Text(
          heading,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xff222126),
          ),
        ),
        Text(
          subHeading,
          style: textTheme.labelSmall?.copyWith(
              color: const Color(0xff222126), fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
