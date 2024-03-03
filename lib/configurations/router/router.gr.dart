// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;
import 'package:hackmate/features/app/presentation/pages/app_home_page.dart'
    deferred as _i1;
import 'package:hackmate/features/app/presentation/pages/unknown_page.dart'
    deferred as _i15;
import 'package:hackmate/features/authentication/presentation/pages/login_options_router_page.dart'
    deferred as _i6;
import 'package:hackmate/features/authentication/presentation/pages/login_providers_page.dart'
    deferred as _i7;
import 'package:hackmate/features/authentication/presentation/pages/login_router_page.dart'
    deferred as _i8;
import 'package:hackmate/features/authentication/presentation/pages/onboarding_page.dart'
    deferred as _i9;
import 'package:hackmate/features/authentication/presentation/pages/phone_auth_router_page.dart'
    deferred as _i10;
import 'package:hackmate/features/authentication/presentation/pages/phone_login_page.dart'
    deferred as _i11;
import 'package:hackmate/features/authentication/presentation/pages/phone_otp_verify_page.dart'
    deferred as _i12;
import 'package:hackmate/features/home/presentation/pages/category_hackathon_page.dart'
    deferred as _i2;
import 'package:hackmate/features/home/presentation/pages/hackathon_router_page.dart'
    deferred as _i4;
import 'package:hackmate/features/home/presentation/pages/home_page.dart'
    deferred as _i5;
import 'package:hackmate/features/home/presentation/pages/upcoming_hackathon_page.dart'
    deferred as _i16;
import 'package:hackmate/features/team/presentation/create_team_page.dart'
    deferred as _i3;
import 'package:hackmate/features/team/presentation/post_vacancy_teammates_page.dart'
    deferred as _i13;
import 'package:hackmate/features/team/presentation/team_router.dart'
    deferred as _i14;
import 'package:hackmate/features/team/presentation/user_team_page.dart'
    deferred as _i22;
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_prefs_page.dart'
    deferred as _i17;
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_profile_page.dart'
    deferred as _i18;
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_router_page.dart'
    deferred as _i19;
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_skills_page.dart'
    deferred as _i20;
import 'package:hackmate/features/user_survey.dart/presentation/pages/user_survey_teams_page.dart'
    deferred as _i21;

abstract class $AppRouter extends _i23.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i1.loadLibrary,
          () => _i23.WrappedRoute(child: _i1.AppHomePage()),
        ),
      );
    },
    CategoryHackathonRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CategoryHackathonRouteArgs>(
          orElse: () => CategoryHackathonRouteArgs(
              categoryName: pathParams.getString('categoryName')));
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.CategoryHackathonPage(
            key: args.key,
            categoryName: args.categoryName,
          ),
        ),
      );
    },
    CreateTeamRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.CreateTeamPage(),
        ),
      );
    },
    HackathonRouter.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.HackathonRouterPage(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.HomePage(),
        ),
      );
    },
    LoginOptionsRouter.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.LoginOptionsRouterPage(),
        ),
      );
    },
    LoginProvidersRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.LoginProvidersPage(),
        ),
      );
    },
    LoginRouter.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.LoginRouterPage(),
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.OnboardingPage(key: args.key),
        ),
      );
    },
    PhoneAuthRouter.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.PhoneAuthRouterPage(),
        ),
      );
    },
    PhoneLoginRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.PhoneLoginPage(),
        ),
      );
    },
    PhoneOtpVerifyRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.PhoneOtpVerifyPage(),
        ),
      );
    },
    PostVacancyTeammatesRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.PostVacancyTeammatesPage(),
        ),
      );
    },
    TeamRouter.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i14.loadLibrary,
          () => _i23.WrappedRoute(child: _i14.TeamRouterPage()),
        ),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i15.loadLibrary,
          () => _i15.UnknownPage(),
        ),
      );
    },
    UpcomingHackathonsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i16.loadLibrary,
          () => _i16.UpcomingHackathonsPage(),
        ),
      );
    },
    UserSurveyPrefsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i17.loadLibrary,
          () => _i17.UserSurveyPrefsPage(),
        ),
      );
    },
    UserSurveyProfileRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i18.loadLibrary,
          () => _i18.UserSurveyProfilePage(),
        ),
      );
    },
    UserSurveyRouter.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i19.loadLibrary,
          () => _i23.WrappedRoute(child: _i19.UserSurveyRouterPage()),
        ),
      );
    },
    UserSurveySkillsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i20.loadLibrary,
          () => _i20.UserSurveySkillsPage(),
        ),
      );
    },
    UserSurveyTeamRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i21.loadLibrary,
          () => _i21.UserSurveyTeamPage(),
        ),
      );
    },
    UserTeamRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.DeferredWidget(
          _i22.loadLibrary,
          () => _i22.UserTeamPage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomePage]
class AppHomeRoute extends _i23.PageRouteInfo<void> {
  const AppHomeRoute({List<_i23.PageRouteInfo>? children})
      : super(
          AppHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryHackathonPage]
class CategoryHackathonRoute
    extends _i23.PageRouteInfo<CategoryHackathonRouteArgs> {
  CategoryHackathonRoute({
    _i24.Key? key,
    required String categoryName,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          CategoryHackathonRoute.name,
          args: CategoryHackathonRouteArgs(
            key: key,
            categoryName: categoryName,
          ),
          rawPathParams: {'categoryName': categoryName},
          initialChildren: children,
        );

  static const String name = 'CategoryHackathonRoute';

  static const _i23.PageInfo<CategoryHackathonRouteArgs> page =
      _i23.PageInfo<CategoryHackathonRouteArgs>(name);
}

class CategoryHackathonRouteArgs {
  const CategoryHackathonRouteArgs({
    this.key,
    required this.categoryName,
  });

  final _i24.Key? key;

  final String categoryName;

  @override
  String toString() {
    return 'CategoryHackathonRouteArgs{key: $key, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i3.CreateTeamPage]
class CreateTeamRoute extends _i23.PageRouteInfo<void> {
  const CreateTeamRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CreateTeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateTeamRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HackathonRouterPage]
class HackathonRouter extends _i23.PageRouteInfo<void> {
  const HackathonRouter({List<_i23.PageRouteInfo>? children})
      : super(
          HackathonRouter.name,
          initialChildren: children,
        );

  static const String name = 'HackathonRouter';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i23.PageRouteInfo<void> {
  const HomeRoute({List<_i23.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginOptionsRouterPage]
class LoginOptionsRouter extends _i23.PageRouteInfo<void> {
  const LoginOptionsRouter({List<_i23.PageRouteInfo>? children})
      : super(
          LoginOptionsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginOptionsRouter';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginProvidersPage]
class LoginProvidersRoute extends _i23.PageRouteInfo<void> {
  const LoginProvidersRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LoginProvidersRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginProvidersRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginRouterPage]
class LoginRouter extends _i23.PageRouteInfo<void> {
  const LoginRouter({List<_i23.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingPage]
class OnboardingRoute extends _i23.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i24.Key? key,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i23.PageInfo<OnboardingRouteArgs> page =
      _i23.PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.PhoneAuthRouterPage]
class PhoneAuthRouter extends _i23.PageRouteInfo<void> {
  const PhoneAuthRouter({List<_i23.PageRouteInfo>? children})
      : super(
          PhoneAuthRouter.name,
          initialChildren: children,
        );

  static const String name = 'PhoneAuthRouter';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PhoneLoginPage]
class PhoneLoginRoute extends _i23.PageRouteInfo<void> {
  const PhoneLoginRoute({List<_i23.PageRouteInfo>? children})
      : super(
          PhoneLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneLoginRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PhoneOtpVerifyPage]
class PhoneOtpVerifyRoute extends _i23.PageRouteInfo<void> {
  const PhoneOtpVerifyRoute({List<_i23.PageRouteInfo>? children})
      : super(
          PhoneOtpVerifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneOtpVerifyRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PostVacancyTeammatesPage]
class PostVacancyTeammatesRoute extends _i23.PageRouteInfo<void> {
  const PostVacancyTeammatesRoute({List<_i23.PageRouteInfo>? children})
      : super(
          PostVacancyTeammatesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostVacancyTeammatesRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TeamRouterPage]
class TeamRouter extends _i23.PageRouteInfo<void> {
  const TeamRouter({List<_i23.PageRouteInfo>? children})
      : super(
          TeamRouter.name,
          initialChildren: children,
        );

  static const String name = 'TeamRouter';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i15.UnknownPage]
class UnknownRoute extends _i23.PageRouteInfo<void> {
  const UnknownRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i16.UpcomingHackathonsPage]
class UpcomingHackathonsRoute extends _i23.PageRouteInfo<void> {
  const UpcomingHackathonsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UpcomingHackathonsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpcomingHackathonsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i17.UserSurveyPrefsPage]
class UserSurveyPrefsRoute extends _i23.PageRouteInfo<void> {
  const UserSurveyPrefsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UserSurveyPrefsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyPrefsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i18.UserSurveyProfilePage]
class UserSurveyProfileRoute extends _i23.PageRouteInfo<void> {
  const UserSurveyProfileRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UserSurveyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyProfileRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i19.UserSurveyRouterPage]
class UserSurveyRouter extends _i23.PageRouteInfo<void> {
  const UserSurveyRouter({List<_i23.PageRouteInfo>? children})
      : super(
          UserSurveyRouter.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyRouter';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i20.UserSurveySkillsPage]
class UserSurveySkillsRoute extends _i23.PageRouteInfo<void> {
  const UserSurveySkillsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UserSurveySkillsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveySkillsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i21.UserSurveyTeamPage]
class UserSurveyTeamRoute extends _i23.PageRouteInfo<void> {
  const UserSurveyTeamRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UserSurveyTeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSurveyTeamRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i22.UserTeamPage]
class UserTeamRoute extends _i23.PageRouteInfo<void> {
  const UserTeamRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UserTeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserTeamRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}