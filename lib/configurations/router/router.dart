import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/router/auth_guard.dart';
import 'package:hackmate/configurations/theme/colors.dart';
import 'package:hackmate/features/app/presentation/pages/app_home_routes.dart';
import 'package:hackmate/features/authentication/presentation/pages/login_routes.dart';
import 'package:hackmate/features/chat/presentation/pages/chat_routes.dart';
import 'package:hackmate/features/home/presentation/pages/hackathon_routes.dart';
import 'package:hackmate/features/team/presentation/team_routes.dart';
import 'package:hackmate/features/user_survey.dart/presentation/user_survey_routes.dart';

import 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '*', page: UnknownRoute.page),
    AutoRoute(
      path: '/splash',
      page: SplashRoute.page,
    ),
    AutoRoute(
      path: '/login',
      page: LoginRouter.page,
      children: loginRoutes,
    ),
    AutoRoute(
      path: '/onboarding',
      page: OnboardingRoute.page,
    ),
    AutoRoute(
      path: '/user-survey',
      page: UserSurveyRouter.page,
      guards: [
        AuthGuard(),
      ],
      children: userSurveyRoutes,
    ),
    AutoRoute(
      path: '/team',
      page: TeamRouter.page,
      guards: [
        AuthGuard(),
      ],
      children: teamRoutes,
    ),
    AutoRoute(
      path: '/app-home',
      page: AppHomeRoute.page,
      guards: [
        AuthGuard(),
      ],
      children: appHomeRoutes,
    ),
    CustomRoute(
      path: '/matched',
      page: MatchedDialogRoute.page,
      customRouteBuilder: dialogRouteBuilder,
    ),
    AutoRoute(
      path: '/hackathons',
      page: HackathonRouter.page,
      children: hackathonRoutes,
    ),
    AutoRoute(path: '/chat/:roomID', page: ChatRoomRoute.page),
  ];
}

Route<T> modalSheetBuilder<T>(
        BuildContext context, Widget child, AutoRoutePage<T> page) =>
    ModalBottomSheetRoute(
      settings: page,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: (MediaQuery.of(context).size.height / 10) * 7,
      ),
      builder: (context) => child,
    );

Route<T> dialogRouteBuilder<T>(
        BuildContext context, Widget child, AutoRoutePage<T> page) =>
    DialogRoute(
      settings: page,
      barrierDismissible: true,
      builder: (context) => child,
      context: context,
      useSafeArea: true,
      barrierColor: AppColors.surfaceVariantDark.withOpacity(.1),
    );
