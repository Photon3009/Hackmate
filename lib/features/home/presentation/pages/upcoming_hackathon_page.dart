import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';
import 'package:hackmate/features/home/presentation/upcoming_hackathons_list.dart';
import '../../../../configurations/configurations.dart';

@RoutePage()
class UpcomingHackathonsPage extends StatelessWidget {
  const UpcomingHackathonsPage({super.key});

  @override
  Widget build(BuildContext context) => const HackmateScaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: kPadding * 3,
          ),
          child: UpcomingHackathonsList(),
        ),
        appBarTitleText: 'Upcoming Hackathons',
        centerAppBarTitle: false,
      );
}
