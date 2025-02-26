import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/transaction.dto.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/transactions.provider.g.dart';

@riverpod
class Transactions extends _$Transactions {
  @override
  List<Transaction> build() {
    return [];
  }

  Future<void> getTransactions(String account_id) async {
    FlutterSecureStorage secure_storage = ref.watch(secureStorageProvider);
    String? token = await secure_storage.read(key: jwt);
    String? stored_email = await secure_storage.read(key: email);
    if (token == null || stored_email == null) {
      return Future.error('Token or Email null');
    }
    Response response = await dio.get(
      "$transactions_endpoint/$account_id",
      options: Options(
        headers: {"Authorization": "Bearer $token"},
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
