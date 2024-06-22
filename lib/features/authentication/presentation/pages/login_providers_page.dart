import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';
import 'package:hackmate/features/authentication/presentation/auth_button.dart';
import 'package:hackmate/features/authentication/presentation/description_content.dart';
import 'package:hackmate/features/authentication/presentation/stacked_illustration.dart';
import 'package:hackmate/hackmate_icons.dart';

@RoutePage()
class LoginProvidersPage extends StatelessWidget {
  const LoginProvidersPage({super.key});

  @override
  Widget build(BuildContext context) => HackmateScaffold(
        showAppBar: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              StackedIllustration(
                illustration: Assets.images.escape.image(),
              ),
              const DescriptionContent(
                tagline: 'Get ready to conquer the world of hackathons. '
                    'Swipe, match, and unleash your creativity today!',
                verticalPadding: kPadding * 2,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding * 4),
                child: _LoginSheet(),
              )
            ],
          ),
        ),
      );
}

class _LoginSheet extends StatelessWidget {
  const _LoginSheet({Key? key}) : super(key: key);

  final dividerColor = Colors.black38;
  final dividerHeight = kPadding / 8;
  final buttonSpacingSizedBox = const SizedBox.square(
    dimension: kPadding * 2,
  );

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const AuthButton(
            icon: HackmateIcons.google,
            provider: 'google',
            label: 'Continue with Google',
          ),
          buttonSpacingSizedBox,
          AuthButton(
            provider: 'phone',
            label: 'Use Phone Number',
            onPressed: () {
              context.router.push(
                const PhoneAuthRouter(
                  children: [
                    PhoneLoginRoute(),
                  ],
                ),
              );
            },
            authButtonType: AuthButtonType.outlined,
          ),
          buttonSpacingSizedBox,

          ///TO DO
          // Row(
          //   children: [
          //     Expanded(
          //       flex: 1,
          //       child: Container(
          //         height: dividerHeight,
          //         color: dividerColor,
          //       ),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: Center(
          //         child: Text(
          //           'Or continue with',
          //           style: Theme.of(context).textTheme.titleSmall,
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       flex: 1,
          //       child: Container(
          //         height: dividerHeight,
          //         color: dividerColor,
          //       ),
          //     ),
          //   ],
          // ),
          // buttonSpacingSizedBox,
          // Container(
          //   height: kButtonHeight,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Theme.of(context).primaryColor),
          //     borderRadius: BorderRadius.circular(kButtonRadius),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const AuthButton(
          //         icon: HackmateIcons.github,
          //         provider: 'github',
          //         authButtonType: AuthButtonType.icon,
          //       ),
          //       buttonSpacingSizedBox,
          //       const AuthButton(
          //         icon: HackmateIcons.twitter,
          //         provider: 'twitter',
          //         authButtonType: AuthButtonType.icon,
          //       ),
          //       buttonSpacingSizedBox,
          //       const AuthButton(
          //         icon: HackmateIcons.linkedin,
          //         provider: 'linkedin',
          //         authButtonType: AuthButtonType.icon,
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: kPadding * 4,
          ),
        ],
      );
}
