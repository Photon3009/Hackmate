import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/presentation/hackmate_dropdown_selected_item.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';
import 'package:hackmate/features/app/presentation/user_action_list_tile.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';
import 'package:hackmate/features/team/data/blocs/team_cubit.dart';
import 'package:hackmate/hackmate_icons.dart';

import '../../../configurations/configurations.dart';

@RoutePage()
class UserTeamPage extends StatelessWidget {
  const UserTeamPage({super.key});

  @override
  Widget build(BuildContext context) => HackmateScaffold(
        body: Padding(
          padding: const EdgeInsets.all(kPadding * 4),
          child: Column(
            children: [
              const Row(
                children: [
                  Text('Member Info'),
                  Spacer(),
                  Text('Role'),
                ],
              ),
              const SizedBox(height: kPadding * 4),
              BlocBuilder<TeamCubit, TeamState>(
                builder: (context, state) {
                  final team = state.team;
                  final members = team?.members;
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (team == null || members == null) {
                    return const Offstage();
                  } else {
                    final memberRoles = team.memberRoles;

                    return ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final member = members[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: kPadding * 2,
                          ),
                          child: UserActionListTile(
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (member.id == team.admin)
                                    Icon(
                                      HackmateIcons.crownfilled,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  CircleAvatar(
                                    radius: kPadding * 2.5,
                                    foregroundImage: CachedNetworkImageProvider(
                                      member.avatar!,
                                    ),
                                  ),
                                ],
                              ),
                              title: member.name,
                              trailing: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  underline: const Offstage(),
                                  value: memberRoles?.containsKey(member.id) ??
                                          false
                                      ? memberRoles![member.id]
                                      : null,
                                  dropdownColor: Colors.white,
                                  onChanged: (value) async {
                                    await context
                                        .read<TeamCubit>()
                                        .updateMemberRole(
                                          teamId: team.id,
                                          memberId: member.id,
                                          role: value as String,
                                        );
                                  },
                                  isExpanded: false,
                                  hint: const Text('Select'),
                                  selectedItemBuilder: (context) => [
                                    const HackmateDropdownSelectedItem(
                                      'Backend',
                                    ),
                                    const HackmateDropdownSelectedItem(
                                      'Frontend',
                                    ),
                                    const HackmateDropdownSelectedItem(
                                      'UI/UX Designer',
                                    ),
                                    const HackmateDropdownSelectedItem(
                                      'Debugger',
                                    ),
                                    const HackmateDropdownSelectedItem(
                                      'Pitcher',
                                    ),
                                  ],
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'backend',
                                      child: Text('Backend'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'frontend',
                                      child: Text('Frontend'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'designer',
                                      child: Text('UI/UX Designer'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'debugger',
                                      child: Text('Debugger'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'pitcher',
                                      child: Text('Pitcher'),
                                    ),
                                  ],
                                ),
                              )),
                        );
                      },
                      itemCount: members.length,
                    );
                  }
                },
              ),
              if (context.read<TeamCubit>().state.team?.admin ==
                  AuthCubit.instance.state.user!.id)
                const Spacer(),
              ElevatedButton(
                onPressed: () {
                  context.router.push(const PostVacancyTeammatesRoute());
                },
                child: const Text(
                  'Search for members',
                ),
              ),
            ],
          ),
        ),
        appBarTitleText: context.read<TeamCubit>().state.team?.name ?? 'Team',
      );
}
