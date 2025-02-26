import 'package:budget_buddy_frontend/components/account_list_item.component.dart';
import 'package:budget_buddy_frontend/providers/accounts.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountList extends ConsumerStatefulWidget {
  const AccountList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountListState();
}

class _AccountListState extends ConsumerState<AccountList> {
  bool _accountsLoading = false;
  String? error;

  @override
  void initState() {
    super.initState();
    _loadAccounts();
  }

  Future<void> _loadAccounts() async {
    setState(() {
      _accountsLoading = true;
      error = null;
    });
    try {
      await ref.read(accountsProvider.notifier).fetchAccounts();
    } catch (e) {
      setState(() {
        error = e.toString();
      });
    } finally {
      setState(() {
        _accountsLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final accounts = ref.watch(accountsProvider);
    if (_accountsLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (error != null) {
      return Center(
        child: Column(
          children: [Text('Error: $error')],
        ),
      );
    }
    if (accounts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('No Accounts Found')],
        ),
      );
    }

    return Expanded(
      child: RefreshIndicator(
        onRefresh: _loadAccounts,
        child: ListView.builder(
          itemCount: accounts.length,
          itemBuilder: (context, index) {
            final acc = accounts[index];
            return AccountListItem(account: acc);
          },
        ),
      ),
    );
  }
}
