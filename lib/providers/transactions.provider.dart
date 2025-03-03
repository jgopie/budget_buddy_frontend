import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/auth_info.dart';
import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:budget_buddy_frontend/providers/accounts.provider.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
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

  Future<void> addTransaction(AddTransaction new_transaction) async {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    Response response = await dio.post(
      transactions_endpoint,
      options: Options(
        headers: {"Authorization": "Bearer ${auth_info.token}"},
      ),
      data: new_transaction.toJson(),
    );
    if (response.statusCode == 200) {
      ref.watch(accountsProvider.notifier).fetchAccounts();
      return getTransactions(new_transaction.account_id);
    }
  }

  Future<void> deleteTransaction(
      String transaction_id, String account_id) async {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    String user_id = ref.watch(userAccountInformationProvider)!.id;
    Response response = await dio.delete(
      transactions_endpoint,
      data: {
        "id": transaction_id,
        "account_id": account_id,
        "user_id": user_id
      },
      options: Options(
        headers: {
          "Authorization": "Bearer ${auth_info.token}",
        },
      ),
    );
    if (response.statusCode == 204) {
      ref.read(accountsProvider.notifier).fetchAccounts();
      return getTransactions(account_id);
    } else {
      return Future.error(response.data);
    }
  }
}
