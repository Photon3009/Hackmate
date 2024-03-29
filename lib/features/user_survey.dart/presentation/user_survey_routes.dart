import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/utils/custom_transitions_route.dart';

final userSurveyRoutes = [
  scaleTransitionCustomRoute(
    path: 'profile',
    initial: true,
    page: UserSurveyProfileRoute.page,
    meta: const {
      'title': 'Set up Your Profile',
    },
  ),
  scaleTransitionCustomRoute(
    path: 'skills',
    page: UserSurveySkillsRoute.page,
    meta: const {
      'title': 'Your Skills',
    },
  ),
  scaleTransitionCustomRoute(
    path: 'preferences',
    page: UserSurveyPrefsRoute.page,
    meta: const {
      'title': 'Preferences',
    },
  ),
  scaleTransitionCustomRoute(
    path: 'team',
    page: UserSurveyTeamRoute.page,
    meta: const {
      'title': 'Select one option',
    },
  ),
];
