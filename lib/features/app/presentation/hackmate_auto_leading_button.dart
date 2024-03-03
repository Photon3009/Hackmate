import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hackmate/features/app/presentation/hackmate_icon_button.dart';

class HackmateAutoLeadingButton extends StatelessWidget {
  const HackmateAutoLeadingButton({super.key, this.onPressed, this.icon});

  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) => AutoLeadingButton(
        builder: (context, type, function) {
          if (type == LeadingType.noLeading) return const Offstage();
          return HackmateIconButton(
            onPressed: onPressed ?? function,
            icon: icon ??
                (type == LeadingType.back
                    ? Icons.chevron_left
                    : type == LeadingType.close
                        ? Icons.close
                        : Icons.menu),
          );
        },
      );
}
