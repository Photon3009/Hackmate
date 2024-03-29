import 'package:flutter/material.dart';
import 'package:hackmate/features/authentication/presentation/description_content.dart';
import 'package:hackmate/features/authentication/presentation/stacked_illustration.dart';

class SingleOnboardingPage extends StatelessWidget {
  const SingleOnboardingPage({
    super.key,
    required this.illustration,
    required this.tagline,
    this.flip = false,
  });

  final Image illustration;
  final String tagline;
  final bool flip;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          StackedIllustration(
            illustration: illustration,
            flip: flip,
          ),
          DescriptionContent(tagline: tagline),
        ],
      );
}
