import 'package:auto_route/auto_route.dart';
import 'package:hackmate/configurations/router/router.gr.dart';

final hackathonRoutes = [
  AutoRoute(
    path: 'category/:categoryName',
    page: CategoryHackathonRoute.page,
  ),
  AutoRoute(
    initial: true,
    path: 'upcoming',
    page: UpcomingHackathonsRoute.page,
  )
];
