import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/presentation/hackmate_section_header.dart';
import 'package:hackmate/features/home/data/blocs/hackathon_cubit.dart';
import 'package:hackmate/features/home/presentation/hackathon_themes_grid.dart';
import 'package:hackmate/features/home/presentation/join_team_list.dart';
import 'package:hackmate/features/home/presentation/upcoming_hackathons_list.dart';
import 'package:hackmate/features/team/data/blocs/team_cubit.dart';
import '../../../../configurations/configurations.dart';
import '../presentation.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const sectionSeparator = SizedBox(
      height: kPadding * 2,
    );
    return ListView(
      shrinkWrap: true,
      children: [
        const BannerCarousel(),
        BlocBuilder<TeamCubit, TeamState>(
          builder: (context, state) => state.isLoading
              ? const Padding(
                  padding: EdgeInsets.all(
                    kPadding,
                  ),
                  child: Center(child: CircularProgressIndicator()),
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPadding * 4,
                        vertical: kPadding * 2,
                      ),
                      child: _TeamActionButton(
                        hasTeam: state.team != null,
                      ),
                    ),
                    if (state.team == null) ...[
                      sectionSeparator,
                      HackmateSectionHeader(
                        title: 'Join Existing Team',
                        onActionClick: () {},
                        buttonText: 'See All',
                        showActionButton: state.vacancies.length > 3,
                      ),
                      sectionSeparator,
                      const JoinTeamList(),
                      sectionSeparator,
                    ],
                  ],
                ),
        ),
        HackmateSectionHeader(
          title: 'Upcoming Hackathons',
          onActionClick: () {
            context.router.push(
              const HackathonRouter(),
            );
          },
          buttonText: 'See All',
          showActionButton:
              context.watch<HackathonCubit>().state.hackathons.length > 3,
        ),
        sectionSeparator,
        const UpcomingHackathonsList(
          isLargeList: false,
        ),
        sectionSeparator,
        HackmateSectionHeader(
          title: 'Hackathon Themes',
          onActionClick: () {},
          buttonText: '',
          showActionButton: false,
        ),
        sectionSeparator,
        const HackathonThemesGrid(),
        sectionSeparator,
      ],
    );
  }
}

class _TeamActionButton extends StatelessWidget {
  const _TeamActionButton({required this.hasTeam});

  final bool hasTeam;

  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        icon: hasTeam ? const Icon(Icons.people) : const Icon(Icons.add),
        onPressed: () {
          if (hasTeam) {
            context.router.push(const UserTeamRoute());
          } else {
            context.router.push(const CreateTeamRoute());
          }
        },
        label: Text(hasTeam ? 'Your Team' : 'Create Team'),
      );
}
