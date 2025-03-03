import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key, required this.transaction});
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
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
        onTap: () {},
      ),
    );
  }
}
