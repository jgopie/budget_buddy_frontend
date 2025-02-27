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
    String? description,
  }) = _Transaction;
  factory Transaction.fromJson(Map<String, Object?> json) =>
      _$TransactionFromJson(json);
}

@freezed
class TransactionCreated with _$TransactionCreated {
  const factory TransactionCreated({
    required Transaction transaction_details,
    required String
        account_details, //TODO: Change string to proper account type
  }) = _TransactionCreated;
  factory TransactionCreated.fromJson(Map<String, Object?> json) =>
      _$TransactionCreatedFromJson(json);
}
