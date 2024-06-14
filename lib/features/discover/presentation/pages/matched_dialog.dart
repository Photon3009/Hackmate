import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/configurations/configurations.dart';
import 'package:hackmate/configurations/router/router.gr.dart';
import 'package:hackmate/features/app/presentation/hackmate_auto_leading_button.dart';
import 'package:hackmate/features/app/presentation/hackmate_scaffold.dart';

@RoutePage()
class MatchedDialogPage extends StatelessWidget {
  const MatchedDialogPage({
    super.key,
    required this.avatar1,
    required this.avatar2,
    required this.matchName,
  });

  final String avatar1;
  final String avatar2;
  final String matchName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return HackmateScaffold(
      body: Padding(
        padding: const EdgeInsets.all(kPadding * 5),
        child: Column(
          children: [
            const HackmateAutoLeadingButton(
              icon: Icons.close,
            ),
            const Spacer(),
            Text(
              'It\'s a match!',
              style: theme.textTheme.displaySmall?.copyWith(
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: kPadding * 4),
            Text(
              'You and $matchName have liked each other.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: kPadding * 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: kPadding * 5,
                  backgroundImage: CachedNetworkImageProvider(
                    '${avatar1}?project=$kProjectId&mode=admin',
                  ),
                ),
                const SizedBox(width: kPadding * 2),
                CircleAvatar(
                  radius: kPadding * 5,
                  backgroundImage: CachedNetworkImageProvider(
                    '${avatar2}?project=$kProjectId&mode=admin',
                  ),
                ),
              ],
            ),
            const SizedBox(height: kPadding * 4),
            Text(
              'Send a message to start a conversation.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: kPadding * 4),
            ElevatedButton(
              child: const Text('Send a message'),
              onPressed: () {
                context.router.push(const ChatRouter());
              },
            ),
            const Spacer(),
          ],
        ),
      ),
      showAppBar: false,
    );
  }
}
