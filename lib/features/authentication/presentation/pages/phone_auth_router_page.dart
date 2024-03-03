import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/features/app/presentation/hackmate_auto_leading_button.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';
import '../../../../configurations/configurations.dart';

@RoutePage(
  name: 'PhoneAuthRouter',
)
class PhoneAuthRouterPage extends StatelessWidget {
  const PhoneAuthRouterPage({super.key});

  @override
  Widget build(BuildContext context) => HackmateScaffold(
        showAppBar: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kPadding * 2),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HackmateAutoLeadingButton(),
                    const Spacer(),
                    Assets.images.enterOtp.image(),
                    const Spacer(),
                  ],
                ),
                const Expanded(
                  child: AutoRouter(),
                ),
              ],
            ),
          ),
        ),
      );
}
