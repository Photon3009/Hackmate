import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';
import 'package:hackmate/features/user_survey.dart/data/blocs/user_survey_cubit.dart';

@RoutePage(
  name: 'UserSurveyRouter',
)
class UserSurveyRouterPage extends StatelessWidget implements AutoRouteWrapper {
  const UserSurveyRouterPage({super.key});

  @override
  Widget build(BuildContext context) => const AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    final user = authCubit.state.user;

    return BlocProvider<UserSurveyCubit>(
      create: (_) => UserSurveyCubit()
        ..initialize(
          skills: user?.skills ?? [],
          hackathonThemes: user?.hackathonThemeInterests ?? [],
          hackathonType: user?.hackathonModeInterests,
        ),
      child: this,
    );
  }
}
