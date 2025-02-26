import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountListItem extends StatelessWidget {
  final Account account;

  const AccountListItem({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getColorForAccountType(account.account_type),
          child: Icon(
            _getIconForAccountType(account.account_type),
            color: Colors.white,
          ),
        ),
        title: Text(
          account.account_name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(account.account_type),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$${account.current_balance.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: account.current_balance >= 0 ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
        onTap: () {
          context.push('/account_details', extra: account);
        },
      ),
    );
  }

  IconData _getIconForAccountType(String type) {
    switch (type.toLowerCase()) {
      case 'checking':
        return Icons.account_balance;
      case 'savings':
        return Icons.savings;
      case 'credit card':
        return Icons.credit_card;
      case 'investment':
        return Icons.trending_up;
      case 'loan':
        return Icons.money;
      default:
        return Icons.account_balance_wallet;
    }
  }

  Color _getColorForAccountType(String type) {
    switch (type.toLowerCase()) {
      case 'checking':
        return Colors.blue;
      case 'savings':
        return Colors.green;
      case 'credit card':
        return Colors.purple;
      case 'investment':
        return Colors.amber.shade800;
      case 'loan':
        return Colors.red;
      default:
        return Colors.blueGrey;
    }
  }
}
