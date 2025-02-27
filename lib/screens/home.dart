import 'package:budget_buddy_frontend/components/account_list.component.dart';
import 'package:budget_buddy_frontend/components/budget_buddy_appbar.component.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user_info = ref.watch(userAccountInformationProvider);
    return Scaffold(
      appBar: BudgetBuddyAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user_info!.first_name),
            IconButton(
              onPressed: () {
                context.push('/add_account');
              },
              icon: Icon(Icons.add),
            ),
            AccountList(),
          ],
        ),
      ),
    );
  }
}
