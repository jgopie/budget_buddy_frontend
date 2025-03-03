import 'package:budget_buddy_frontend/providers/transactions.provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionListItem extends ConsumerWidget {
  const TransactionListItem({super.key, required this.transaction});
  final Transaction transaction;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final f = DateFormat('d/M/y');
    final formatted_date = f.format(transaction.created_at);
    return Card(
      child: ListTile(
        isThreeLine: true,
        title: Text(transaction.amount.toString()),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              formatted_date,
            ),
            Text(transaction.description ?? ''),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            showDialog(
                context: context,
                builder: (builder) {
                  return AlertDialog(
                    title: Text("Delete Transaction"),
                    content: Text(
                        "Are you sure you want to delete this transaction? This action is irreversible"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          ref
                              .read(transactionsProvider.notifier)
                              .deleteTransaction(
                                  transaction.id, transaction.account_id);
                          Navigator.of(context).pop();
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  );
                });
          },
        ),
        onTap: () {},
      ),
    );
  }
}
