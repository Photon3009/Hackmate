import 'package:auto_route/auto_route.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/configurations/constants/constants.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/presentation/hackmate_multi_selector.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';
import 'package:hackmate/features/user_survey.dart/data/blocs/user_survey_cubit.dart';
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_base_wrapper.dart';

@RoutePage()
class UserSurveySkillsPage extends StatelessWidget {
  const UserSurveySkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    final user = authCubit.state.user;

    return UserSurveyBaseWrapper(
      body: Expanded(
        child: HackmateMultiSelector<String>.grid(
          items: kSkillsList,
          initialSelections: user?.skills ?? <String>[],
          onSelectionChanged: (selectedItems) {
            final userSurveyCubit = context.read<UserSurveyCubit>();
            userSurveyCubit.updateSelectedSkills(selectedItems);
          },
        ),
      ),
      onConfirm: () async {
        final skills = context.read<UserSurveyCubit>().state.selectedSkills;
        await authCubit.updateUserSkills(skills);
      },
      onSuccess: () {
        DjangoflowAppSnackbar.showInfo('Skills updated successfully');
        context.router.push(const UserSurveyPrefsRoute());
      },
      onError: (e) => DjangoflowAppSnackbar.showError(
        e.toString(),
      ),
      confirmButtonText: 'Continue',
    );
  }
}
