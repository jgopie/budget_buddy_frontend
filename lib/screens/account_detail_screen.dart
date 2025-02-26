import 'package:budget_buddy_frontend/components/transaction_list.component.dart';
import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountDetailScreen extends ConsumerWidget {
  const AccountDetailScreen({super.key, required this.account});
  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(account.account_name),
          Text(account.account_type),
          Row(
            children: [
              Text('Created at: ${account.created_at}'),
              Text('Current Balance: ${account.current_balance}'),
            ],
          ),
          TransactionList(account_id: account.id),
        ],
      ),
    );
  }
}
