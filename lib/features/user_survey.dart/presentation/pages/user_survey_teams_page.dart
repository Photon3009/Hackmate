import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/configurations/theme/size_constants.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';

@RoutePage()
class UserSurveyTeamPage extends StatelessWidget {
  const UserSurveyTeamPage({super.key});

  void popParent(BuildContext context) {
    context.router.parentAsStackRouter?.pop();
  }

  @override
  Widget build(BuildContext context) => HackmateScaffold(
        centerAppBarTitle: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 4,
            vertical: kPadding * 1.5,
          ),
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  context.router.parentAsStackRouter?.replace(
                    const TeamRouter(children: [
                      CreateTeamRoute(),
                    ]),
                  );
                },
                label: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kPadding * 2,
                  ),
                  child: Text(
                    'Create Your Own Team',
                  ),
                ),
                icon: const Icon(
                  Icons.add,
                ),
              ),
              const SizedBox(
                height: kPadding * 4,
              ),
              ElevatedButton.icon(
                onPressed: () => popParent(context),
                label: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kPadding * 2,
                  ),
                  child: Text(
                    'Join Existing Team',
                  ),
                ),
                icon: const Icon(
                  Icons.flash_on,
                ),
              ),
              const SizedBox(
                height: kPadding * 4,
              ),
              TextButton(
                onPressed: () => popParent(context),
                child: const Text('Skip for now'),
              )
            ],
          ),
        ),
        appBarTitleText: context.router.topRoute.meta['title'] ?? '',
      );
}
