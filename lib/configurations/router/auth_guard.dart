import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';

bool get isAuthenticated => AuthCubit.instance.state.user != null;

class AuthGuard extends AutoRedirectGuard {
  late StreamSubscription<AuthState> _subscription;

  AuthGuard() {
    _subscription = AuthCubit.instance.stream.listen(
      (state) {
        if (state.user != null) {
          debugPrint("authguard on reevaluate");
          reevaluate(
            strategy: const ReevaluationStrategy.removeAllAndPush(
              AppHomeRoute(),
            ),
          );
        } else if (state.user == null) {
          debugPrint("authguard on login nav");
          reevaluate(
            strategy: const ReevaluationStrategy.removeAllAndPush(
              LoginRouter(),
            ),
          );
        }
      },
    );
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      debugPrint("authguard on nav resolved");
      resolver.next();
    } else {
      debugPrint("authguard on nav");
      redirect(OnboardingRoute(), resolver: resolver);
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async => isAuthenticated;
}
