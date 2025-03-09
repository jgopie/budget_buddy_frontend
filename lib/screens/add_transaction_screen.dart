import 'package:budget_buddy_frontend/components/budget_buddy_appbar.component.dart';
import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:budget_buddy_frontend/providers/transactions.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BudgetBuddyAppbar(),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _amount_controller,
              decoration: InputDecoration(labelText: 'Amount'),
              validator: (value) {
                if (double.tryParse(value!) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUnfocus,
            ),
            TextFormField(
              controller: _description_controller,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Invalid Input'),
                    ),
                  );
                }
                AddTransaction new_transaction = AddTransaction(
                  user_id: ref.watch(userAccountInformationProvider)!.id,
                  account_id: widget.account_id,
                  amount: double.parse(_amount_controller.text),
                  description: _description_controller.text,
                );
                ref
                    .read(transactionsProvider.notifier)
                    .addTransaction(new_transaction);
                context.pop();
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
