import 'package:auto_route/auto_route.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';
import 'package:hackmate/features/authentication/presentation/single_onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../configurations/configurations.dart';
import '../../../../utils/utils.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final controller = PageController();

  @override
  Widget build(BuildContext context) => HackmateScaffold(
        showAppBar: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ExpandablePageView(
                controller: controller,
                children: [
                  SingleOnboardingPage(
                    illustration: Assets.images.keyboard.image(),
                    tagline:
                        'Swipe, Match, Code: The Ultimate Hackathon Networking App.',
                  ),
                  SingleOnboardingPage(
                    illustration: Assets.images.devProfiles.image(),
                    tagline: 'Harness the power of our intuitive swiping '
                        'feature for building winning hackathon teams',
                    flip: true,
                  ),
                  SingleOnboardingPage(
                    illustration: Assets.images.handShake.image(),
                    tagline: 'Discover like-minded individuals and form'
                        ' unbeatable teams to take on any challenge.',
                  ),
                ],
              ),
              SmoothPageIndicator(
                controller: controller,
                effect: SwapEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: kPadding * 2,
                  dotWidth: kPadding * 2,
                  type: SwapType.yRotation,
                ),
                onDotClicked: (index) {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInCubic,
                  );
                },
                count: 3,
              ),
              const _LoginSignupActions()
            ],
          ),
        ),
      );
}

class _LoginSignupActions extends StatelessWidget {
  const _LoginSignupActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.all(
        kPadding * 4,
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.router.push(const LoginRouter());
            },
            child: const Text('Create an account'),
          ),
          const SizedBox(
            height: kPadding * 2,
          ),
          RichText(
            text: TextSpan(
              text: 'Already have an account? ',
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: 'Sign In',
                  style: textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                  recognizer:
                      AppGestureRecognizer.getNavigableOnTapGestureRecognizer(
                    context: context,
                    route: const LoginRouter(),
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
