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
