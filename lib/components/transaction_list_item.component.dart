import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key, required this.transaction});
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(transaction.amount.toString()),
        subtitle: Text(
          transaction.created_at.toString(),
        ),
        onTap: () {},
      ),
    );
  }
}
