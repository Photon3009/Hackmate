import 'package:flutter/material.dart';
import 'package:hackmate/features/app/presentation/hackmate_auto_leading_button.dart';
import '../../../configurations/configurations.dart';

class HackmateAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HackmateAppBar({
    super.key,
    this.appBarTitleText,
    this.appBarTitleWidget,
    this.actions,
    required this.centerTitle,
    this.elevation,
  });

  final String? appBarTitleText;
  final Widget? appBarTitleWidget;

  final List<Widget>? actions;
  final bool centerTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kPadding),
        child: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: kPadding * 6,
          elevation: elevation,
          leading: const HackmateAutoLeadingButton(),
          centerTitle: centerTitle,
          title: appBarTitleText != null
              ? Text(
                  appBarTitleText!,
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              : appBarTitleWidget,
          actions: actions,
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 8);
}
