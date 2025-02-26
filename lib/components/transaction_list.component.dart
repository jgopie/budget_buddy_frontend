import 'package:budget_buddy_frontend/components/transaction_list_item.component.dart';
import 'package:budget_buddy_frontend/providers/transactions.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionList extends ConsumerStatefulWidget {
  const TransactionList({super.key, required this.account_id});
  final String account_id;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TransactionList();
}

class _TransactionList extends ConsumerState<TransactionList> {
  bool _transactionsLoading = false;
  String? error;

  @override
  void initState() {
    super.initState();
    _loadTransactions();
  }

  Future<void> _loadTransactions() async {
    setState(() {
      _transactionsLoading = true;
      error = null;
    });
    try {
      await ref
          .read(transactionsProvider.notifier)
          .getTransactions(widget.account_id);
    } catch (e) {
      setState(() {
        error = e.toString();
      });
    } finally {
      setState(() {
        _transactionsLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final transactions = ref.watch(transactionsProvider);
    if (_transactionsLoading) {
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
    if (transactions.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('No Transactions Found')],
        ),
      );
    }

    return Expanded(
      child: RefreshIndicator(
        onRefresh: _loadTransactions,
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final tran = transactions[index];
            return TransactionListItem(transaction: tran);
          },
        ),
      ),
    );
  }
}
