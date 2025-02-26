import 'package:flutter/material.dart';

class BudgetBuddyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BudgetBuddyAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Budget Buddy'),
    );
  }
}
