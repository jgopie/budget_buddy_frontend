import 'package:budget_buddy_frontend/components/budget_buddy_appbar.component.dart';
import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:budget_buddy_frontend/providers/transactions.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddTransactionScreen extends ConsumerStatefulWidget {
  const AddTransactionScreen({super.key, required this.account_id});
  final String account_id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddTransactionScreenState();
}

class _AddTransactionScreenState extends ConsumerState<AddTransactionScreen> {
  late TextEditingController _description_controller;
  late TextEditingController _amount_controller;

  @override
  void initState() {
    super.initState();
    _description_controller = TextEditingController();
    _amount_controller = TextEditingController();
  }

  @override
  void dispose() {
    _description_controller.dispose();
    _amount_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BudgetBuddyAppbar(),
      body: Column(
        children: [
          TextField(
            controller: _amount_controller,
            decoration: InputDecoration(labelText: 'Amount'),
          ),
          TextField(
            controller: _description_controller,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          TextButton(
            onPressed: () {
              AddTransaction new_transaction = AddTransaction(
                user_id: ref.watch(userAccountInformationProvider)!.id,
                account_id: widget.account_id,
                amount: double.parse(_amount_controller.text),
                description: _description_controller.text,
              );
              ref
                  .read(transactionsProvider.notifier)
                  .addTransaction(new_transaction);
            },
            child: Text('Add Transaction'),
          ),
        ],
      ),
    );
  }
}
