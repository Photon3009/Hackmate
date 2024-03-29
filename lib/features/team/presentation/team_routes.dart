import 'package:auto_route/auto_route.dart';
import 'package:hackmate/configurations/router/router.gr.dart';

final teamRoutes = [
  AutoRoute(
    //TODO add team exists guard
    path: 'create',
    page: CreateTeamRoute.page,
  ),
  AutoRoute(
    page: UserTeamRoute.page,
    path: 'user-team',
  ),
  AutoRoute(
    page: PostVacancyTeammatesRoute.page,
    path: 'post-vacancy-teammate',
  )
];
