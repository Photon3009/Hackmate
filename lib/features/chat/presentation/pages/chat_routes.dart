import 'package:auto_route/auto_route.dart';
import 'package:hackmate/configurations/router/router.gr.dart';

final chatRoutes = [
  AutoRoute(
    path: 'chatList',
    page: ChatListRoute.page,
    initial: true,
  ),
];
