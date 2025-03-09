import 'package:budget_buddy_frontend/apptheme.dart';
import 'package:budget_buddy_frontend/providers/theme_mode.provider.dart'
    as theme_provider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetBuddyAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const BudgetBuddyAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool is_dark_mode = Theme.of(context).brightness == Brightness.dark;
    return AppBar(
      title: Text('Budget Buddy'),
      actions: [
        Switch(
          inactiveTrackColor: AppTheme.lightBlue,
          inactiveThumbColor: AppTheme.green,
          activeTrackColor: Color(0xFF121212),
          thumbColor: WidgetStatePropertyAll<Color>(AppTheme.green),
          thumbIcon: !is_dark_mode
              ? WidgetStatePropertyAll<Icon>(
                  Icon(
                    Icons.sunny,
                    color: AppTheme.black,
                  ),
                )
              : WidgetStatePropertyAll<Icon>(
                  Icon(
                    Icons.nightlight_round,
                    color: AppTheme.black,
                  ),
                ),
          trackOutlineColor: !is_dark_mode
              ? WidgetStatePropertyAll<Color>(AppTheme.darkBlue)
              : WidgetStatePropertyAll<Color>(AppTheme.white),
          value: is_dark_mode,
          onChanged: (is_on) {
            ref.read(theme_provider.themeProvider.notifier).toggle();
          },
        ),
      ],
    );
  }
}
