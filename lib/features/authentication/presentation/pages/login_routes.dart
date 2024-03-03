import 'package:auto_route/auto_route.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/utils/custom_transitions_route.dart';

final loginRoutes = [
  RedirectRoute(path: '', redirectTo: 'options'),
  AutoRoute(
    path: 'options',
    page: LoginOptionsRouter.page,
    children: [
      AutoRoute(
        initial: true,
        path: '',
        page: LoginProvidersRoute.page,
      ),
      AutoRoute(
        path: 'phone',
        page: PhoneAuthRouter.page,
        children: [
          AutoRoute(
            initial: true,
            path: '',
            page: PhoneLoginRoute.page,
          ),
          scaleTransitionCustomRoute(
            path: 'verify',
            page: PhoneOtpVerifyRoute.page,
          ),
        ],
      ),
    ],
  ),
];
