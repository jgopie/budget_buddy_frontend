import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:budget_buddy_frontend/dto/auth_info.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/accounts.provider.g.dart';

@riverpod
class Accounts extends _$Accounts {
  @override
  List<Account> build() {
    return [];
  }

  Future<void> fetchAccounts() async {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    String userId = ref.watch(userAccountInformationProvider)!.id;

    Response response = await dio.get(
      '$accounts_endpoint/$userId',
      options: Options(
        headers: {"Authorization": "Bearer ${auth_info.token}"},
      ),
    );
    if (response.statusCode == 200) {
      List<Account> accounts = [];
      for (var i = 0; i < response.data.length; i++) {
        accounts.add(
          Account.fromJson(response.data[i]),
        );
      }
      state = accounts;
    }
  }

  Future<void> addAccount(AddAccount new_account_info) async {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    Response response = await dio.post(
      accounts_endpoint,
      data: new_account_info.toJson(),
      options: Options(headers: {"Authorization": "Bearer ${auth_info.token}"}),
    );
    if (response.statusCode == 200) {
      return fetchAccounts();
    }
  }

  Future<void> deleteAccount(String account_id) async {
    AuthInfo auth_info;
    try {
      auth_info = await ref.watch(secureStorageProvider.notifier).getAuthInfo();
    } catch (e) {
      return Future.error(e);
    }
    String user_id = ref.watch(userAccountInformationProvider)!.id;
    Response response = await dio.delete(
      accounts_endpoint,
      data: {
        "user_id": user_id,
        "account_id": account_id,
      },
      options: Options(
        headers: {"Authorization": "Bearer ${auth_info.token}"},
      ),
    );
    if (response.statusCode != 204) {
      debugPrint('Error deleting account');
    }
  }

  double getAccountBalance(String account_id) {
    for (int i = 0; i < state.length; i++) {
      if (state[i].id == account_id) {
        return state[i].current_balance;
      }
    }
    return 0.0;
  }
}
