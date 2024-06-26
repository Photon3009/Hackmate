import 'dart:async';
import 'package:appwrite/appwrite.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hackmate/hackmate_app_builder.dart';
import 'configurations/configurations.dart';
import 'utils/exception_formatter.dart';

Future<void> main() async {
  // Runs the runApp method
  DjangoflowAppRunner.run(
    onException: (exception, stackTrace) {
      debugPrint('Exception Caught -- $exception');
      // Dispatch exception to error reporters
      // ExeptionFilter.filter(exception); returns: true -> show exception to user or false -> do not show
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (exception is AppwriteException &&
            (exception.message?.startsWith('Failed host lookup:') ?? false)) {
          DjangoflowAppSnackbar.showError(
            'No internet connection',
          );
        }

        DjangoflowAppSnackbar.showError(
          exception is AppwriteException
              ? exception.message ?? 'Unknown error'
              : ExceptionFormatter.format(exception),
        );
      });
    },
    rootWidgetBuilder: (appBuilder) async {
      String? initialDeepLink;
      final appLinksRepository = AppLinksRepository();
      if (!kIsWeb) {
        initialDeepLink = (await appLinksRepository.getInitialLink())?.path;
      }
      debugPrint(initialDeepLink);
      // initialize router
      final router = AppRouter();

      return appBuilder(
        HackmateAppBuilder(
          appRouter: router,
          initialDeepLink: initialDeepLink,
          appLinksRepository: appLinksRepository,
        ),
      );
    },
  );
}
