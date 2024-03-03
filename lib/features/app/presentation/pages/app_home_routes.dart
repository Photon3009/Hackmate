import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/configurations/router/router.gr.dart';

final appHomeRoutes = [
  AutoRoute(
    initial: true,
    path: 'home',
    page: HomeRoute.page,
  ),
  // AutoRoute(
  //   path: 'discover',
  //   page: DiscoverRouter.page,
  //   children: [
  //     AutoRoute(
  //       initial: true,
  //       path: '',
  //       page: DiscoverRoute.page,
  //     ),
  //     CustomRoute(
  //         path: 'list',
  //         page: DiscoverListRoute.page,
  //         transitionsBuilder: (
  //           BuildContext context,
  //           Animation<double> animation,
  //           Animation<double> secondaryAnimation,
  //           Widget child,
  //         ) {
  //           const begin = Offset(1.0, 0.0);
  //           const end = Offset.zero;
  //           const curve = Curves.ease;

  //           var tween =
  //               Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  //           return SlideTransition(
  //             position: animation.drive(tween),
  //             child: child,
  //           );
  //         }),
  //   ],
  // ),
  // AutoRoute(
  //   path: 'chat',
  //   page: ChatRouter.page,
  //   children: chatRoutes,
  //   guards: [
  //     AuthGuard(),
  //   ],
  // ),
  // AutoRoute(
  //   path: 'profile',
  //   page: ProfileRoute.page,
  // ),
];
