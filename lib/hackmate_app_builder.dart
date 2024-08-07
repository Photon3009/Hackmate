import 'package:appwrite/appwrite.dart' hide Locale;
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/configurations/router/route_parser.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/app.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';
import 'package:hackmate/features/authentication/presentation/listeners/login_listener_wrapper.dart';
import 'package:hackmate/features/chat/data/blocs/chat_cubit.dart';
import 'package:hackmate/features/home/data/blocs/hackathon_cubit.dart';
import 'features/app/data/api_client.dart';
import 'features/team/data/blocs/team_cubit.dart';

class HackmateAppBuilder extends AppBuilder {
  HackmateAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
    required AppLinksRepository appLinksRepository,
    final String? initialDeepLink,
  }) : super(
          onInitState: (context) {},
          repositoryProviders: [
            RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
            ),
            RepositoryProvider<ApiClient>(
              create: (context) => ApiClient(
                client: Client(),
                projectId: kProjectId,
                endpoint: kApiEndpoint,
              ),
            ),
          ],
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<AppLinksCubit>(
              create: (context) => AppLinksCubit(
                null,
                context.read<AppLinksRepository>(),
              ),
              lazy: false,
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit.instance
                ..initialize(
                  context.read<ApiClient>(),
                ),
            ),
            BlocProvider<TeamCubit>(
              create: (context) => TeamCubit()
                ..initialize(
                  apiClient: context.read<ApiClient>(),
                ),
            ),
            BlocProvider<HackathonCubit>(
              create: (context) => HackathonCubit()
                ..initialize(
                  context.read<ApiClient>(),
                )
                ..loadHackathons(),
            ),
            BlocProvider<ChatCubit>(
              create: (context) => ChatCubit()
                ..initialize(
                  apiClient: context.read(),
                ),
            )
          ],
          builder: (context) =>
              // FutureBuilder(
              //   future: _initializeApp(context),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return const SplashScreen(); // Show splash screen while loading
              //     } else {
              //       return
              LoginListenerWrapper(
            initialUser: context.read<AuthCubit>().state.user,
            onLogin: (context, user) async {
              debugPrint("LoggedIn");

              /// Trigger user survey if not attempted
              final teamCubit = context.read<TeamCubit>();
              final chatCuibt = context.read<ChatCubit>();
              final authCubit = context.read<AuthCubit>();
              final prefs = await context.read<ApiClient>().account.getPrefs();
              final userSurveyAttempted = prefs.data[userSurveyAttemptedPref];

              if (userSurveyAttempted == null ||
                  userSurveyAttempted.toString() == 'false') {
                appRouter.push(
                  const UserSurveyRouter(),
                );
              }

              await authCubit.getUser();

              teamCubit
                ..loadUserTeam()
                ..listTeams()
                ..loadVacancies()
                ..loadJoinRequests();

              chatCuibt
                ..loadChatRooms()
                ..getMessagesForChatRooms();
            },
            onLogout: (context) {
              context.read<ChatCubit>().clearChats();
              debugPrint("logout");
            },
            child: AppCubitConsumer(
              listenWhen: (previous, current) =>
                  previous.environment != current.environment,
              listener: (context, state) async {},
              builder: (context, appState) => MaterialApp.router(
                debugShowCheckedModeBanner: false,
                scaffoldMessengerKey:
                    DjangoflowAppSnackbar.scaffoldMessengerKey,
                title: kAppTitle,
                routeInformationParser: RouteParser(
                  appRouter.matcher,
                  includePrefixMatches: true,
                ),
                theme: AppTheme.light,
                darkTheme: AppTheme.dark,
                themeMode: appState.themeMode,
                locale: Locale(appState.locale, ''),
                supportedLocales: const [
                  Locale('en', ''),
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  CountryLocalizations.delegate,
                ],
                routerDelegate: appRouter.delegate(
                  deepLinkBuilder: (_) => initialDeepLink != null
                      ? DeepLink.path(initialDeepLink)
                      : const DeepLink(
                          [
                            SplashRoute(),
                          ],
                        ),
                ),
                builder: (context, child) => AppResponsiveLayoutBuilder(
                  child: SandboxBanner(
                    isSandbox: appState.environment == AppEnvironment.sandbox,
                    child: child != null
                        ? kIsWeb
                            ? child
                            : AppLinksCubitListener(
                                listenWhen: (previous, current) =>
                                    current != null,
                                listener: (context, appLink) {
                                  final path = appLink?.path;
                                  if (path != null) {
                                    appRouter.navigateNamed(
                                      path,
                                      onFailure: (failure) {
                                        appRouter.navigate(
                                          const SplashRoute(),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: child,
                              )
                        : const Offstage(),
                  ),
                ),
              ),
            ),
          ),
        );
}
