import 'package:budget_buddy_frontend/components/budget_buddy_appbar.component.dart';
import 'package:budget_buddy_frontend/components/transaction_list.component.dart';
import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:budget_buddy_frontend/providers/accounts.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class AccountDetailScreen extends ConsumerWidget {
  const AccountDetailScreen({super.key, required this.account});
  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final f = DateFormat('d/M/y');
    final formatted_date = f.format(account.created_at);
    final account_balance =
        ref.watch(accountsProvider.notifier).getAccountBalance(account.id);
    return Scaffold(
      appBar: BudgetBuddyAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            account.account_name,
          ),
          Text(account.account_type),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Created at: $formatted_date'),
              Text('Current Balance: \$${account_balance.toStringAsFixed(2)}'),
            ],
          ),
          IconButton(
            onPressed: () {
              context.push('/add_transaction', extra: account.id);
            },
            icon: Icon(Icons.add),
          ),
          TransactionList(account_id: account.id),
        ],
      ),
    );
  }
}
