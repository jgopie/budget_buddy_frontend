import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/transaction.dto.freezed.dart';
part 'generated/transaction.dto.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required DateTime created_at,
    required String account_id,
    required double amount,
  }) = _Transaction;
  factory Transaction.fromJson(Map<String, Object?> json) =>
      _$TransactionFromJson(json);
}
