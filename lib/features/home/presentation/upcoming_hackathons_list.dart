import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/features/app/presentation/no_items.dart';
import 'package:hackmate/features/home/data/blocs/hackathon_cubit.dart';
import 'package:hackmate/features/home/presentation/hackathons_list.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../configurations/configurations.dart';

class UpcomingHackathonsList extends StatelessWidget {
  const UpcomingHackathonsList({
    super.key,
    this.isLargeList = true,
  });

  final bool isLargeList;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HackathonCubit, HackathonState>(
        builder: (context, state) {
          final upcomingHackathons = state.hackathons
              // .where((hackathon) => hackathon.startDate.isAfter(DateTime.now()))
              .toList();

          final upcomingHackathonsCount = upcomingHackathons.length;

          if (state.isLoading) {
            return const Padding(
              padding: EdgeInsets.all(
                kPadding,
              ),
              child: Center(child: CircularProgressIndicator()),
            );
          } else if (upcomingHackathons.isEmpty) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                vertical: kPadding * 2,
              ),
              child: NoItems(
                message: 'No Upcoming hackathons',
                imageSize: kPadding * 12.5,
              ),
            );
          } else {
            return HackathonsList(
              heroTag: 'upcoming',
              hackathons: state.hackathons,
              shrinkWrap: true,
              itemCount: isLargeList
                  ? upcomingHackathonsCount
                  : upcomingHackathonsCount > 3
                      ? 3
                      : upcomingHackathonsCount,
              onJoinButtonPressed: (index) {
                final onButtonPressed = upcomingHackathons[index].onClick;

                if ((onButtonPressed ?? '').isEmpty) {
                  DjangoflowAppSnackbar.showInfo('Coming Soon');
                  return;
                } else if (onButtonPressed!.contains('launch')) {
                  launchUrlString(
                    onButtonPressed.replaceFirst('launch:', ''),
                    mode: LaunchMode.externalApplication,
                  );
                }
              },
            );
          }
        },
      );
}
