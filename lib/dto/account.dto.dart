import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/account.dto.freezed.dart';
part 'generated/account.dto.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required String id,
    required String account_name,
    required double current_balance,
    required String user_id,
    required String account_type,
    required DateTime created_at,
    required DateTime updated_at,
  }) = _Account;
  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}

@freezed
class AddAccount with _$AddAccount {
  const factory AddAccount({
    required String account_name,
    required double current_balance,
    required String account_type,
    required String user_id,
  }) = _AddAccount;
  factory AddAccount.fromJson(Map<String, Object?> json) =>
      _$AddAccountFromJson(json);
}

enum AccountTypes {
  bank_savings('Bank Account - Savings'),
  bank_chequing('Bank Account - Chequeing'),
  credit_union_savings('Credit Union - Savings'),
  credit_union_chequing('Credit Union - Chequeing');

  final String description;
  const AccountTypes(this.description);
}
