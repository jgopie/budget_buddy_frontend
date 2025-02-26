import 'package:budget_buddy_frontend/providers/accounts.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:budget_buddy_frontend/components/budget_buddy_appbar.component.dart';
import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddAccountScreen extends ConsumerStatefulWidget {
  const AddAccountScreen({super.key});

  @override
  ConsumerState<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends ConsumerState<AddAccountScreen> {
  late TextEditingController _account_name_controller;
  late TextEditingController _current_balance_controller;
  late TextEditingController _account_type_controller;

  @override
  void initState() {
    super.initState();
    _account_name_controller = TextEditingController();
    _current_balance_controller = TextEditingController();
    _account_type_controller = TextEditingController();
  }

  @override
  void dispose() {
    _account_name_controller.dispose();
    _current_balance_controller.dispose();
    _account_type_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BudgetBuddyAppbar(),
      body: Column(
        children: [
          TextField(
            controller: _account_name_controller,
            decoration: InputDecoration(labelText: 'Account Name'),
          ),
          TextField(
            controller: _current_balance_controller,
            decoration: InputDecoration(labelText: 'Current Balance'),
          ),
          DropdownMenu(
            initialSelection: AccountTypes.bank_savings,
            controller: _account_type_controller,
            dropdownMenuEntries: AccountTypes.values
                .map(
                  (AccountTypes entry) => DropdownMenuEntry(
                      value: entry.description, label: entry.description),
                )
                .toList(),
          ),
          TextButton(
            onPressed: () async {
              final user_id = ref.watch(userAccountInformationProvider)!.id;
              AddAccount new_account_info = AddAccount(
                account_name: _account_name_controller.text,
                current_balance: double.parse(_current_balance_controller.text),
                account_type: _account_type_controller.text,
                user_id: user_id,
              );
              await ref
                  .read(accountsProvider.notifier)
                  .addAccount(new_account_info);
              context.pop();
            },
            child: Text('Add Account'),
          )
        ],
      ),
    );
  }
}
