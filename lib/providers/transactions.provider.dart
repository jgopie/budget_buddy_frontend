import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/auth_info.dart';
import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/transactions.provider.g.dart';

@riverpod
class Transactions extends _$Transactions {
  @override
  List<Transaction> build() {
    return [];
  }

  Future<void> getTransactions(String account_id) async {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    Response response = await dio.get(
      "$transactions_endpoint/$account_id",
      options: Options(
        headers: {"Authorization": "Bearer ${auth_info.token}"},
      ),
    );
    if (response.statusCode == 200) {
      List<Transaction> transactions = [];
      for (var i = 0; i < response.data.length; i++) {
        transactions.add(Transaction.fromJson(response.data[i]));
      }
      state = transactions;
    }
  }
}
